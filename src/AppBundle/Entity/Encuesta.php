<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Encuesta
 *
 * @ORM\Table(name="Encuesta")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EncuestaRepository")
 */
class Encuesta
{
    /**
     * @var integer
     *
     * @ORM\Column(name="Score", type="integer", nullable=true)
     */
    private $score = 'NULL';

    /**
     * @ORM\ManyToOne(targetEntity="Perfil", inversedBy="encuestas")
     * @ORM\JoinColumn(name="score", referencedColumnName="id")
     */
    private $perfil;

    /**
     * @var string
     *
     * @ORM\Column(name="Nombre", type="string", length=128, nullable=true)
     */
    private $nombre = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Planestudios", type="string", length=32, nullable=true)
     */
    private $planestudios = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Email", type="string", length=128, nullable=true)
     */
    private $email = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Actproductiva", type="string", length=256, nullable=true)
     */
    private $actproductiva = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Relprograma", type="string", length=256, nullable=true)
     */
    private $relprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Objprograma", type="string", length=32, nullable=true)
     */
    private $objprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfadmitidos", type="string", length=32, nullable=true)
     */
    private $perfadmitidos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Desempeno", type="string", length=32, nullable=true)
     */
    private $desempeno = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfegresado", type="string", length=32, nullable=true)
     */
    private $perfegresado = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Perfprofesores", type="string", length=32, nullable=true)
     */
    private $perfprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Numprofesores", type="string", length=32, nullable=true)
     */
    private $numprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Proacompanamiento", type="string", length=32, nullable=true)
     */
    private $proacompanamiento = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Proprofesores", type="string", length=32, nullable=true)
     */
    private $proprofesores = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Propedagogicos", type="string", length=32, nullable=true)
     */
    private $propedagogicos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Procevaluacion", type="string", length=32, nullable=true)
     */
    private $procevaluacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Aplconocimiento", type="string", length=32, nullable=true)
     */
    private $aplconocimiento = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Mecinvestigacion", type="string", length=32, nullable=true)
     */
    private $mecinvestigacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Prodinvestigativa", type="string", length=32, nullable=true)
     */
    private $prodinvestigativa = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Interprograma", type="string", length=32, nullable=true)
     */
    private $interprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impacinvestigacion", type="string", length=32, nullable=true)
     */
    private $impacinvestigacion = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Articprograma", type="string", length=32, nullable=true)
     */
    private $articprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Internalprograma", type="string", length=32, nullable=true)
     */
    private $internalprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Mecanlengua", type="string", length=32, nullable=true)
     */
    private $mecanlengua = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Bienestudiantil", type="string", length=32, nullable=true)
     */
    private $bienestudiantil = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Ambienteinsti", type="string", length=32, nullable=true)
     */
    private $ambienteinsti = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Ambienteconsidera", type="string", length=32, nullable=true)
     */
    private $ambienteconsidera = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impactoocupacional", type="string", length=32, nullable=true)
     */
    private $impactoocupacional = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Impactocientifica", type="string", length=32, nullable=true)
     */
    private $impactocientifica = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Segvincegresados", type="string", length=32, nullable=true)
     */
    private $segvincegresados = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Consecrecursos", type="string", length=32, nullable=true)
     */
    private $consecrecursos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Apoyoadministrativo", type="string", length=32, nullable=true)
     */
    private $apoyoadministrativo = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Dedicacionprograma", type="string", length=64, nullable=true)
     */
    private $dedicacionprograma = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Redescientificas", type="text", length=65535, nullable=true)
     */
    private $redescientificas = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Premiosrecibidos", type="text", length=65535, nullable=true)
     */
    private $premiosrecibidos = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Comiteeditorial", type="text", length=65535, nullable=true)
     */
    private $comiteeditorial = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Freccvlac", type="string", length=64, nullable=true)
     */
    private $freccvlac = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Sugerencias", type="text", length=65535, nullable=true)
     */
    private $sugerencias = 'NULL';

    /**
     * @var string
     *
     * @ORM\Column(name="Timest", type="string", length=64)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $timest;

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Encuesta
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }



    /**
     * Set score
     *
     * @param integer $score
     *
     * @return Encuesta
     */
    public function setScore($score)
    {
        $this->score = $score;

        return $this;
    }

    /**
     * Get score
     *
     * @return integer
     */
    public function getScore()
    {
        return $this->score;
    }

    /**
     * Set planestudios
     *
     * @param string $planestudios
     *
     * @return Encuesta
     */
    public function setPlanestudios($planestudios)
    {
        $this->planestudios = $planestudios;

        return $this;
    }

    /**
     * Get planestudios
     *
     * @return string
     */
    public function getPlanestudios()
    {
        return $this->planestudios;
    }

    /**
     * Set email
     *
     * @param string $email
     *
     * @return Encuesta
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set actproductiva
     *
     * @param string $actproductiva
     *
     * @return Encuesta
     */
    public function setActproductiva($actproductiva)
    {
        $this->actproductiva = $actproductiva;

        return $this;
    }

    /**
     * Get actproductiva
     *
     * @return string
     */
    public function getActproductiva()
    {
        return $this->actproductiva;
    }

    /**
     * Set relprograma
     *
     * @param string $relprograma
     *
     * @return Encuesta
     */
    public function setRelprograma($relprograma)
    {
        $this->relprograma = $relprograma;

        return $this;
    }

    /**
     * Get relprograma
     *
     * @return string
     */
    public function getRelprograma()
    {
        return $this->relprograma;
    }

    /**
     * Set objprograma
     *
     * @param string $objprograma
     *
     * @return Encuesta
     */
    public function setObjprograma($objprograma)
    {
        $this->objprograma = $objprograma;

        return $this;
    }

    /**
     * Get objprograma
     *
     * @return string
     */
    public function getObjprograma()
    {
        return $this->objprograma;
    }

    /**
     * Set perfadmitidos
     *
     * @param string $perfadmitidos
     *
     * @return Encuesta
     */
    public function setPerfadmitidos($perfadmitidos)
    {
        $this->perfadmitidos = $perfadmitidos;

        return $this;
    }

    /**
     * Get perfadmitidos
     *
     * @return string
     */
    public function getPerfadmitidos()
    {
        return $this->perfadmitidos;
    }

    /**
     * Set desempeno
     *
     * @param string $desempeno
     *
     * @return Encuesta
     */
    public function setDesempeno($desempeno)
    {
        $this->desempeno = $desempeno;

        return $this;
    }

    /**
     * Get desempeno
     *
     * @return string
     */
    public function getDesempeno()
    {
        return $this->desempeno;
    }

    /**
     * Set perfegresado
     *
     * @param string $perfegresado
     *
     * @return Encuesta
     */
    public function setPerfegresado($perfegresado)
    {
        $this->perfegresado = $perfegresado;

        return $this;
    }

    /**
     * Get perfegresado
     *
     * @return string
     */
    public function getPerfegresado()
    {
        return $this->perfegresado;
    }

    /**
     * Set perfprofesores
     *
     * @param string $perfprofesores
     *
     * @return Encuesta
     */
    public function setPerfprofesores($perfprofesores)
    {
        $this->perfprofesores = $perfprofesores;

        return $this;
    }

    /**
     * Get perfprofesores
     *
     * @return string
     */
    public function getPerfprofesores()
    {
        return $this->perfprofesores;
    }

    /**
     * Set numprofesores
     *
     * @param string $numprofesores
     *
     * @return Encuesta
     */
    public function setNumprofesores($numprofesores)
    {
        $this->numprofesores = $numprofesores;

        return $this;
    }

    /**
     * Get numprofesores
     *
     * @return string
     */
    public function getNumprofesores()
    {
        return $this->numprofesores;
    }

    /**
     * Set proacompanamiento
     *
     * @param string $proacompanamiento
     *
     * @return Encuesta
     */
    public function setProacompanamiento($proacompanamiento)
    {
        $this->proacompanamiento = $proacompanamiento;

        return $this;
    }

    /**
     * Get proacompanamiento
     *
     * @return string
     */
    public function getProacompanamiento()
    {
        return $this->proacompanamiento;
    }

    /**
     * Set proprofesores
     *
     * @param string $proprofesores
     *
     * @return Encuesta
     */
    public function setProprofesores($proprofesores)
    {
        $this->proprofesores = $proprofesores;

        return $this;
    }

    /**
     * Get proprofesores
     *
     * @return string
     */
    public function getProprofesores()
    {
        return $this->proprofesores;
    }

    /**
     * Set propedagogicos
     *
     * @param string $propedagogicos
     *
     * @return Encuesta
     */
    public function setPropedagogicos($propedagogicos)
    {
        $this->propedagogicos = $propedagogicos;

        return $this;
    }

    /**
     * Get propedagogicos
     *
     * @return string
     */
    public function getPropedagogicos()
    {
        return $this->propedagogicos;
    }

    /**
     * Set procevaluacion
     *
     * @param string $procevaluacion
     *
     * @return Encuesta
     */
    public function setProcevaluacion($procevaluacion)
    {
        $this->procevaluacion = $procevaluacion;

        return $this;
    }

    /**
     * Get procevaluacion
     *
     * @return string
     */
    public function getProcevaluacion()
    {
        return $this->procevaluacion;
    }

    /**
     * Set aplconocimiento
     *
     * @param string $aplconocimiento
     *
     * @return Encuesta
     */
    public function setAplconocimiento($aplconocimiento)
    {
        $this->aplconocimiento = $aplconocimiento;

        return $this;
    }

    /**
     * Get aplconocimiento
     *
     * @return string
     */
    public function getAplconocimiento()
    {
        return $this->aplconocimiento;
    }

    /**
     * Set mecinvestigacion
     *
     * @param string $mecinvestigacion
     *
     * @return Encuesta
     */
    public function setMecinvestigacion($mecinvestigacion)
    {
        $this->mecinvestigacion = $mecinvestigacion;

        return $this;
    }

    /**
     * Get mecinvestigacion
     *
     * @return string
     */
    public function getMecinvestigacion()
    {
        return $this->mecinvestigacion;
    }

    /**
     * Set prodinvestigativa
     *
     * @param string $prodinvestigativa
     *
     * @return Encuesta
     */
    public function setProdinvestigativa($prodinvestigativa)
    {
        $this->prodinvestigativa = $prodinvestigativa;

        return $this;
    }

    /**
     * Get prodinvestigativa
     *
     * @return string
     */
    public function getProdinvestigativa()
    {
        return $this->prodinvestigativa;
    }

    /**
     * Set interprograma
     *
     * @param string $interprograma
     *
     * @return Encuesta
     */
    public function setInterprograma($interprograma)
    {
        $this->interprograma = $interprograma;

        return $this;
    }

    /**
     * Get interprograma
     *
     * @return string
     */
    public function getInterprograma()
    {
        return $this->interprograma;
    }

    /**
     * Set impacinvestigacion
     *
     * @param string $impacinvestigacion
     *
     * @return Encuesta
     */
    public function setImpacinvestigacion($impacinvestigacion)
    {
        $this->impacinvestigacion = $impacinvestigacion;

        return $this;
    }

    /**
     * Get impacinvestigacion
     *
     * @return string
     */
    public function getImpacinvestigacion()
    {
        return $this->impacinvestigacion;
    }

    /**
     * Set articprograma
     *
     * @param string $articprograma
     *
     * @return Encuesta
     */
    public function setArticprograma($articprograma)
    {
        $this->articprograma = $articprograma;

        return $this;
    }

    /**
     * Get articprograma
     *
     * @return string
     */
    public function getArticprograma()
    {
        return $this->articprograma;
    }

    /**
     * Set internalprograma
     *
     * @param string $internalprograma
     *
     * @return Encuesta
     */
    public function setInternalprograma($internalprograma)
    {
        $this->internalprograma = $internalprograma;

        return $this;
    }

    /**
     * Get internalprograma
     *
     * @return string
     */
    public function getInternalprograma()
    {
        return $this->internalprograma;
    }

    /**
     * Set mecanlengua
     *
     * @param string $mecanlengua
     *
     * @return Encuesta
     */
    public function setMecanlengua($mecanlengua)
    {
        $this->mecanlengua = $mecanlengua;

        return $this;
    }

    /**
     * Get mecanlengua
     *
     * @return string
     */
    public function getMecanlengua()
    {
        return $this->mecanlengua;
    }

    /**
     * Set bienestudiantil
     *
     * @param string $bienestudiantil
     *
     * @return Encuesta
     */
    public function setBienestudiantil($bienestudiantil)
    {
        $this->bienestudiantil = $bienestudiantil;

        return $this;
    }

    /**
     * Get bienestudiantil
     *
     * @return string
     */
    public function getBienestudiantil()
    {
        return $this->bienestudiantil;
    }

    /**
     * Set ambienteinsti
     *
     * @param string $ambienteinsti
     *
     * @return Encuesta
     */
    public function setAmbienteinsti($ambienteinsti)
    {
        $this->ambienteinsti = $ambienteinsti;

        return $this;
    }

    /**
     * Get ambienteinsti
     *
     * @return string
     */
    public function getAmbienteinsti()
    {
        return $this->ambienteinsti;
    }

    /**
     * Set ambienteconsidera
     *
     * @param string $ambienteconsidera
     *
     * @return Encuesta
     */
    public function setAmbienteconsidera($ambienteconsidera)
    {
        $this->ambienteconsidera = $ambienteconsidera;

        return $this;
    }

    /**
     * Get ambienteconsidera
     *
     * @return string
     */
    public function getAmbienteconsidera()
    {
        return $this->ambienteconsidera;
    }

    /**
     * Set impactoocupacional
     *
     * @param string $impactoocupacional
     *
     * @return Encuesta
     */
    public function setImpactoocupacional($impactoocupacional)
    {
        $this->impactoocupacional = $impactoocupacional;

        return $this;
    }

    /**
     * Get impactoocupacional
     *
     * @return string
     */
    public function getImpactoocupacional()
    {
        return $this->impactoocupacional;
    }

    /**
     * Set impactocientifica
     *
     * @param string $impactocientifica
     *
     * @return Encuesta
     */
    public function setImpactocientifica($impactocientifica)
    {
        $this->impactocientifica = $impactocientifica;

        return $this;
    }

    /**
     * Get impactocientifica
     *
     * @return string
     */
    public function getImpactocientifica()
    {
        return $this->impactocientifica;
    }

    /**
     * Set segvincegresados
     *
     * @param string $segvincegresados
     *
     * @return Encuesta
     */
    public function setSegvincegresados($segvincegresados)
    {
        $this->segvincegresados = $segvincegresados;

        return $this;
    }

    /**
     * Get segvincegresados
     *
     * @return string
     */
    public function getSegvincegresados()
    {
        return $this->segvincegresados;
    }

    /**
     * Set consecrecursos
     *
     * @param string $consecrecursos
     *
     * @return Encuesta
     */
    public function setConsecrecursos($consecrecursos)
    {
        $this->consecrecursos = $consecrecursos;

        return $this;
    }

    /**
     * Get consecrecursos
     *
     * @return string
     */
    public function getConsecrecursos()
    {
        return $this->consecrecursos;
    }

    /**
     * Set apoyoadministrativo
     *
     * @param string $apoyoadministrativo
     *
     * @return Encuesta
     */
    public function setApoyoadministrativo($apoyoadministrativo)
    {
        $this->apoyoadministrativo = $apoyoadministrativo;

        return $this;
    }

    /**
     * Get apoyoadministrativo
     *
     * @return string
     */
    public function getApoyoadministrativo()
    {
        return $this->apoyoadministrativo;
    }

    /**
     * Set dedicacionprograma
     *
     * @param string $dedicacionprograma
     *
     * @return Encuesta
     */
    public function setDedicacionprograma($dedicacionprograma)
    {
        $this->dedicacionprograma = $dedicacionprograma;

        return $this;
    }

    /**
     * Get dedicacionprograma
     *
     * @return string
     */
    public function getDedicacionprograma()
    {
        return $this->dedicacionprograma;
    }

    /**
     * Set redescientificas
     *
     * @param string $redescientificas
     *
     * @return Encuesta
     */
    public function setRedescientificas($redescientificas)
    {
        $this->redescientificas = $redescientificas;

        return $this;
    }

    /**
     * Get redescientificas
     *
     * @return string
     */
    public function getRedescientificas()
    {
        return $this->redescientificas;
    }

    /**
     * Set premiosrecibidos
     *
     * @param string $premiosrecibidos
     *
     * @return Encuesta
     */
    public function setPremiosrecibidos($premiosrecibidos)
    {
        $this->premiosrecibidos = $premiosrecibidos;

        return $this;
    }

    /**
     * Get premiosrecibidos
     *
     * @return string
     */
    public function getPremiosrecibidos()
    {
        return $this->premiosrecibidos;
    }

    /**
     * Set comiteeditorial
     *
     * @param string $comiteeditorial
     *
     * @return Encuesta
     */
    public function setComiteeditorial($comiteeditorial)
    {
        $this->comiteeditorial = $comiteeditorial;

        return $this;
    }

    /**
     * Get comiteeditorial
     *
     * @return string
     */
    public function getComiteeditorial()
    {
        return $this->comiteeditorial;
    }

    /**
     * Set freccvlac
     *
     * @param string $freccvlac
     *
     * @return Encuesta
     */
    public function setFreccvlac($freccvlac)
    {
        $this->freccvlac = $freccvlac;

        return $this;
    }

    /**
     * Get freccvlac
     *
     * @return string
     */
    public function getFreccvlac()
    {
        return $this->freccvlac;
    }

     /**
     * Set sugerencias
     *
     * @param string $sugerencias
     *
     * @return Encuesta
     */
    public function setSugerencias($sugerencias)
    {
        $this->sugerencias = $sugerencias;

        return $this;
    }

    /**
     * Get sugerencias
     *
     * @return string
     */
    public function getSugerencias()
    {
        return $this->sugerencias;
    }

    /**
     * Get timest
     *
     * @return string
     */
    public function getTimest()
    {
        return $this->timest;
    }
}
