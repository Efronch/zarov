<span></span>

<script>
    getData('../server/mufajok.php', renderMenu)

    function Mufajok(id, mufajnev){
        getData(`../server/almufajok.php?mufajid=${id}`, renderAlmenu)
        return `
        <li class="active">
            <a href="#${id}" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" onclick="show(this)">${mufajnev}</a>
            <ul class="collapse list-unstyled" id="${id}">

            </ul>
        </li>
        `
    }

    function show(obj){
        console.log(obj.href.at(-1))
        let id=obj.href.at(-1)
        getData("../server/eloadok.php?mufajid="+id, renderEloado)
    }

    function renderEloado(data){
        console.log(data)
        //window.location.href="index.php?prog=teszt.php"
        let str=""
        for(let obj of data){
            str+=`
            <div>
            <p>${obj.nev}</p>
            <p>Születési idő:${obj.szulido}</p>
            </div>
            `
        }
        document.getElementById("eloado").innerHTML=str
    }

    function renderMenu(data){
        console.log(data)
            for(let obj of data){
                document.querySelector('span').innerHTML += Mufajok(obj.id, obj.mufaj)

            }
    }

    function renderAlmenu(data){
        console.log(data)
        for(let obj of data){
            console.log('azonosító',obj.mufaj_id)
            document.getElementById(obj.mufaj_id).innerHTML +=`
            <li id="${obj.id}" onclick="tartalom(this)">
                ${obj.almufaj}
            </li>
            `
        }
    }

        function tartalom(obj){
            console.log(obj.id)
        }
</script>