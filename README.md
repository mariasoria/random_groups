# random_groups
This repository includes a script in Bash to generate random groups of people from a list

# Proposal:

**Objetivo**: Realizar agrupaciones aleatorias a partir de una lista que contiene los participantes de una kata. 

Ejemplo input: 

```bash
*Attendants=('Laura' 'Jesus' 'Marc' 'Helena' 'Vicente' 'Hugo' 'Marta' 'Monica' 'Emilio')*
```

### 1️⃣ - **Primera iteración**:

- **Input**: una lista/array con nombres que se pasará como argumento al script.
- **Output**: Imprimir por pantalla las parejas generadas aleatoriamente a partir del listado recibido. (Como propuesta adicional, se pueden imprimir las parejas ordenadas alfabéticamente por el primer nombre de la pareja generada).

**Nota**: si la lista contiene nombres impares, debe devolver parejas y una agrupación compuesta por 3 personas.

### 2️⃣ - **Segunda iteración**:

- **Input**: Fichero que contiene una lista/array con nombres (se pasará por argumento el nombre/path donde está el fichero)
- **Output**: Fichero que contendrá las parejas generadas aleatoriamente a partir del listado recibido. (Como propuesta adicional, se puede devolver el listado de parejas ordenado alfabéticamente por el primer nombre de la pareja generada).
- Nota: si la lista contiene nombres impares, debe devolver parejas y una agrupación compuesta por 3 personas

### 3️⃣ - **Tercera iteración**:

- **Inputs**:
    - Fichero que contiene una lista/array con nombres
    - Número de personas a agrupar juntas. Ej. 2 (parejas), 3 (tríos), 4, 5...
- **Output**:
    - Listado que contendrá las agrupaciones generadas aleatoriamente a partir del listado recibido. (Como propuesta adicional, se puede devolver el listado de agrupaciones ordenado alfabéticamente por el primer nombre de los miembros de la agrupación).

**Nota**: si en algún caso "sobran" personas que no llegan a formar una agrupación completa, se deberá agrupar a estas personas juntos.

# Links to share

- Sintaxis bash scripts checker: [https://www.shellcheck.net/](https://www.shellcheck.net/)
- Bash Automated Testing System: [https://github.com/bats-core/bats-core](https://github.com/bats-core/bats-core)
- Bash Style guide: [https://google.github.io/styleguide/shellguide.html](https://google.github.io/styleguide/shellguide.html)
- Commands challenge: [https://cmdchallenge.com/](https://cmdchallenge.com/)
