<span></span>

<script>
    getData('../server/mufajok.php', renderMenu)

    function renderMenu(data){
        console.log("Alműfajok"+data)
            for(let obj of data){
                document.querySelector('span').innerHTML += Mufajok(obj.id, obj.mufaj)
            }
    }

    function Mufajok(id, mufajnev){
        console.log(id,"oké")
        getData(`../server/almufajok.php?mufajid=${id}`, renderAlmenu)
        return `
        <li class="active">
            <a href="#mufaj-${id}" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" onclick="show(this)">${mufajnev}</a>
            <ul class="collapse list-unstyled" id="mufaj-${id}">
            </ul>
        </li>
        `
    }

    function renderAlmenu(data){
        console.log('almenu:',data)
        for(let obj of data){
            console.log('azonosító',obj.mufaj_id,obj.id,obj.almufaj)
            document.getElementById("mufaj-" + obj.mufaj_id).innerHTML +=`
            <li id="${obj.id}" onclick="tartalom(this)">
                ${obj.almufaj}
            </li>
            `
        }
    }

    function show(obj){
        console.log("OBJ.HREF: " + obj.href.at(-1))
        let id=+obj.href.at(-1)
        console.log(id)
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
            <p>Születési idő: ${obj.szulido}</p>
            </div>
            <hr>
            `
        }
        document.getElementById("eloado").innerHTML=str
    }

   
   

        function tartalom(obj){
            console.log('tartalom:',obj)
        }
</script>