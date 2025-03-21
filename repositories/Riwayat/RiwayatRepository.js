// RiwayatRepository.js
const prisma = require("../../utils/Prisma");

const saveRiwayat = async (grupid, progressid) => {
    try {
        // 1. Ambil data grup
        const grup = await prisma.grup.findUnique({
            where: { grupid },
            select: { nama_grup: true }
        });

        if (!grup) throw new Error('Grup tidak ditemukan');

        // 2. Cek apakah grup ini sudah ada di RiwayatGrup
        let riwayatGrup = await prisma.riwayatGrup.findFirst({
            where: { nama_grup: grup.nama_grup },
            select: { riwayatgrupid: true }
        });

        // Kalau belum ada, buat baru
        if (!riwayatGrup) {
            riwayatGrup = await prisma.riwayatGrup.create({
                data: {
                    nama_grup: grup.nama_grup
                }
            });
        }

        // 3. Ambil semua peserta dalam grup
        const pesertaList = await prisma.peserta_Grup.findMany({
            where: { grupid },
            select: {
                userId: true,
                user: {
                    select: {
                        name: true,
                        role: true,
                    }
                }
            }
        });

        if (!pesertaList.length) throw new Error('Tidak ada peserta dalam grup');

        // 4. Tambahkan peserta ke tabel relasi UsersOnRiwayatGrup jika belum ada
        for (const peserta of pesertaList) {
            const existingUser = await prisma.usersOnRiwayatGrup.findFirst({
                where: {
                    riwayatgrupid: riwayatGrup.riwayatgrupid,
                    userid: peserta.userId,
                }
            });

            if (!existingUser) {
                await prisma.usersOnRiwayatGrup.create({
                    data: {
                        riwayatgrupid: riwayatGrup.riwayatgrupid,
                        userid: peserta.userId,
                        name: peserta.user.name,
                        role: peserta.user.role
                    }
                });
            }
        }

        // 5. Ambil data perjalanan berdasarkan progressid
        const perjalanan = await prisma.progress_perjalanan.findFirst({
            where: { grupid, progressid },
            select: {
                perjalananid: true,
                waktu_mulai: true,
                time_selesai: true,
                durasi_progress: true,
                perjalanan: {
                    select: { nama_perjalanan: true }
                }
            }
        });

        if (!perjalanan) throw new Error('Perjalanan tidak ditemukan untuk progress ini.');

        // 6. Simpan RiwayatPerjalanan dengan riwayatgrupid yang sama
        const riwayatPerjalanan = await prisma.riwayatPerjalanan.create({
            data: {
                riwayatgrupid: riwayatGrup.riwayatgrupid,  // PAKAI ID YANG SUDAH ADA
                perjalananid: perjalanan.perjalananid,
                nama_perjalanan: perjalanan.perjalanan.nama_perjalanan,
                waktu_mulai: perjalanan.waktu_mulai,
                time_selesai: perjalanan.time_selesai,
                durasi_progress: perjalanan.durasi_progress
            }
        });

        // 7. Ambil semua doa dalam perjalanan berdasarkan progressid
        const doaList = await prisma.progress_Doa.findMany({
            where: { progressid },
            select: {
                doa: {
                    select: {
                        doaid: true,
                        judul_doa: true
                    }
                },
                durasi_doa: true,
                cek_doa: true
            }
        });

        // 8. Simpan RiwayatDoa
        if (doaList.length > 0) {
            await prisma.riwayatDoa.createMany({
                data: doaList.map(doa => ({
                    riwayatperjalananid: riwayatPerjalanan.riwayatperjalananid,
                    doaid: doa.doa.doaid,
                    judul_doa: doa.doa.judul_doa,
                    durasi_doa: doa.durasi_doa,
                    cek_doa: doa.cek_doa
                }))
            });
        }

        console.log('Riwayat berhasil disimpan untuk grup dan semua perjalanan dalam satu grup.');
        return { message: "Riwayat berhasil disimpan" };

    } catch (error) {
        console.error('Error:', error);
        throw error;
    }
};


const getRiwayatGrupByUserId = async (userId) => {
    return await prisma.riwayatGrup.findMany({
        where: {
            usersOnRiwayatGrup: {
                some: {
                    userid: userId
                }
            }
        },
        select: {
            riwayatgrupid: true,
            nama_grup: true,
            created_at: true
        },
        orderBy: {
            created_at: 'desc'
        }
    });
};

// const getRiwayatPerjalananDetailById = async (riwayatgrupid, perjalananid) => {
//     return await prisma.riwayatPerjalanan.findFirst({
//         where: { riwayatgrupid, perjalananid },
//         select: {
//             riwayatperjalananid: true,
//             nama_perjalanan: true,
//             waktu_mulai: true,
//             time_selesai: true,
//             durasi_progress: true,
//             riwayatDoa: {
//                 select: {
//                     riwayatdoaid: true,
//                     judul_doa: true,
//                     durasi_doa: true,
//                     cek_doa: true
//                 }
//             }
//         }
//     });
// };

// const getRiwayatPerjalananDetailById = async (riwayatgrupid, perjalananid) => {
//     return await prisma.riwayatPerjalanan.findFirst({
//         where: { riwayatgrupid, perjalananid },
//         select: {
//             riwayatperjalananid: true,
//             nama_perjalanan: true,
//             waktu_mulai: true,
//             time_selesai: true,
//             durasi_progress: true,
//             riwayatDoa: {
//                 select: {
//                     riwayatdoaid: true,
//                     doaid: true,
//                     judul_doa: true,
//                     durasi_doa: true,
//                     cek_doa: true,
//                     doa: {
//                         select: {
//                             doa_urut: true
//                         }
//                     }
//                 },
//                 orderBy: {
//                     doa: {
//                         doa_urut: 'asc'
//                     }
//                 }
//             }
//         }
//     });
// };

const getRiwayatPerjalananDetailById = async (riwayatgrupid, perjalananid) => {
    return await prisma.riwayatPerjalanan.findFirst({
        where: { riwayatgrupid, perjalananid },
        select: {
            riwayatperjalananid: true,
            nama_perjalanan: true,
            waktu_mulai: true,
            time_selesai: true,
            durasi_progress: true,
            riwayatDoa: {
                select: {
                    riwayatdoaid: true,
                    doaid: true,
                    judul_doa: true,
                    durasi_doa: true,
                    cek_doa: true,
                    doa: {
                        select: {
                            doa_urut: true
                        }
                    }
                },
                orderBy: {
                    doa: {
                        doa_urut: 'asc'
                    }
                }
            },
            // Ambil user yang rolenya "ustadz" saja
            riwayatGrup: {
                select: {
                    usersOnRiwayatGrup: {
                        where: { role: "ustadz" },
                        select: {
                            userid: true,
                            name: true,
                            role: true
                        }
                    }
                }
            }
        }
    });
};

const getAllRiwayatPerjalanan = async () => {
    return await prisma.riwayatPerjalanan.findMany({
        select: {
            riwayatperjalananid: true,
            riwayatgrupid: true,
            perjalananid: true,
            nama_perjalanan: true,
            waktu_mulai: true,
            time_selesai: true,
            durasi_progress: true,
            riwayatDoa: {
                select: {
                    riwayatdoaid: true,
                    doaid: true,
                    judul_doa: true,
                    durasi_doa: true,
                    cek_doa: true,
                    doa: {
                        select: {
                            doa_urut: true
                        }
                    }
                },
                orderBy: {
                    doa: {
                        doa_urut: 'asc'
                    }
                }
            },
            riwayatGrup: {
                select: {
                    usersOnRiwayatGrup: {
                        where: { role: "ustadz" },
                        select: {
                            userid: true,
                            name: true,
                            role: true
                        }
                    }
                }
            }
        }
    });
};


module.exports = { saveRiwayat, getRiwayatGrupByUserId, getRiwayatPerjalananDetailById, getAllRiwayatPerjalanan };
