# Spring Security Auth Template
This project is a ready-to-use template for building applications with user authentication through Spring Security and PostgreSQL.

### Prerequisites:

- [Java](https://www.java.com/), [JDK 21](https://www.oracle.com/java/technologies/downloads/#java21), [Maven 3.9.6](https://maven.apache.org/download.cgi) and [Git](https://git-scm.com/) installed.
- Ensure that the `JAVA_HOME` environment variable points to your installed JDK
- Add `path\to\your\maven\bin` to your PATH variable.
- [PostgreSQL 16](https://www.postgresql.org/download/) installed on your machine, and a database has been created.

### Steps:

1. Clone the application repository:
    ```bash
    git clone https://github.com/cass1ope1a/auth-template-app.git
    ```
2. Navigate to the project directory:
    ```bash
    cd auth-template-app
    ```
3. Configure the `application.properties` file according to your database settings and credentials.

4. Execute the following command to run the application. During the initial run, it will create three tables: `t_user`, `t_roles`, and `t_user_roles`.
    ```bash
    mvn spring-boot:run
    ```

5. Add user roles to the `t_role` table using the following SQL query:
    ```sql
    INSERT INTO public.t_role(id, name)
    VALUES (1, 'ROLE_USER'), (2, 'ROLE_ADMIN');
    ```
6. **(Optional)** To assign the administrator role to a user, execute the following SQL query:
   ```sql
   INSERT INTO public.t_user_roles(user_id, roles_id)
   VALUES (1, 2);
   ```
7. The application is now ready to use.

<hr>

**Note**: In the current version of this template, password validation is not implemented.
