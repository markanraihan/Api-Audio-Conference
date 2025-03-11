# Backend Project Documentation

## Table of Contents
- [Installation](#installation)
- [Environment Variables](#environment-variables)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)


## Installation

1. **Clone the repository:**
    ```sh
    git clone (Url gitlab/github project)
    ```

2. **Install the dependencies:**
    ```sh
    npm install
    ```

## Environment Variables

Create a `.env` file in the root of your project and add the following environment variables like .env.example:

```env
DATABASE_URL="mysql://root:@localhost:3306/(databasename)
JWT_SECRET=xxxxx
```
Salin pengaturan lainnya dari web **100ms** dan tambahkan ke file **.env** sesuai kebutuhan.
Generate HMS_ACCESS_ISS dari HMS_TEMPLATE_ID di web jwt.io.
Setelah berhasil generate, salin nilai ISS dan tempelkan ke file .env.

SMTP_HOST, SMTP_PORT, SMTP_USER, SMTP_PASS 
Sesuaikan dengan settingan anda, untuk protokol SMTP (Simple Mail Transfer Protocol) untuk mengirim email.

## Database Setup
3. **Install Prisma CLI**

```
npm install -g prisma
```

4. **Generate Prisma Client**
```
npx prisma generate
```

5. **Run Database Migrations**
```
npx prisma migrate dev --name init

```

6. **Seed the Database (optional)**

```
npx prisma db seed

``` 

## Running the Application

7. **Start the development server**
```
npm run start:dev
```
