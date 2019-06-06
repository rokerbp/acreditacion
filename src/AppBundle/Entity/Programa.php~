<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Programa
 *
 * @ORM\Table(name="programa")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ProgramaRepository")
 */
class Programa
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="titulo", type="string", length=255)
     */
    private $titulo;

    /**
     * @var string
     *
     * @ORM\Column(name="norma", type="text")
     */
    private $norma;

    /**
     * @var string
     *
     * @ORM\Column(name="codigo", type="string", length=64, nullable=true)
     */
    private $codigo;

    /**
     * @var string
     *
     * @ORM\Column(name="nivel", type="string", length=128, nullable=true)
     */
    private $nivel;

    /**
     * @var string
     *
     * @ORM\Column(name="jornada", type="string", length=64, nullable=true)
     */
    private $jornada;

    /**
     * @var string
     *
     * @ORM\Column(name="metodologia", type="string", length=255, nullable=true)
     */
    private $metodologia;

    /**
     * @var string
     *
     * @ORM\Column(name="duracion", type="string", length=64, nullable=true)
     */
    private $duracion;

    /**
     * @var string
     *
     * @ORM\Column(name="periodicidad", type="string", length=64, nullable=true)
     */
    private $periodicidad;

    /**
     * @var string
     *
     * @ORM\Column(name="facultad", type="string", length=255, nullable=true)
     */
    private $facultad;

    /**
     * @var string
     *
     * @ORM\Column(name="lugar", type="string", length=255, nullable=true)
     */
    private $lugar;

    /**
     * One Programa has many Modelos.
     * @ORM\OneToMany(targetEntity="Modelo", mappedBy="programa", orphanRemoval=true)
     */
    private $modelos;

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Programa
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
     * Set titulo
     *
     * @param string $titulo
     *
     * @return Programa
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set norma
     *
     * @param string $norma
     *
     * @return Programa
     */
    public function setNorma($norma)
    {
        $this->norma = $norma;

        return $this;
    }

    /**
     * Get norma
     *
     * @return string
     */
    public function getNorma()
    {
        return $this->norma;
    }

    /**
     * Set codigo
     *
     * @param string $codigo
     *
     * @return Programa
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get codigo
     *
     * @return string
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set nivel
     *
     * @param string $nivel
     *
     * @return Programa
     */
    public function setNivel($nivel)
    {
        $this->nivel = $nivel;

        return $this;
    }

    /**
     * Get nivel
     *
     * @return string
     */
    public function getNivel()
    {
        return $this->nivel;
    }

    /**
     * Set jornada
     *
     * @param string $jornada
     *
     * @return Programa
     */
    public function setJornada($jornada)
    {
        $this->jornada = $jornada;

        return $this;
    }

    /**
     * Get jornada
     *
     * @return string
     */
    public function getJornada()
    {
        return $this->jornada;
    }

    /**
     * Set metodologia
     *
     * @param string $metodologia
     *
     * @return Programa
     */
    public function setMetodologia($metodologia)
    {
        $this->metodologia = $metodologia;

        return $this;
    }

    /**
     * Get metodologia
     *
     * @return string
     */
    public function getMetodologia()
    {
        return $this->metodologia;
    }

    /**
     * Set duracion
     *
     * @param string $duracion
     *
     * @return Programa
     */
    public function setDuracion($duracion)
    {
        $this->duracion = $duracion;

        return $this;
    }

    /**
     * Get duracion
     *
     * @return string
     */
    public function getDuracion()
    {
        return $this->duracion;
    }

    /**
     * Set periodicidad
     *
     * @param string $periodicidad
     *
     * @return Programa
     */
    public function setPeriodicidad($periodicidad)
    {
        $this->periodicidad = $periodicidad;

        return $this;
    }

    /**
     * Get periodicidad
     *
     * @return string
     */
    public function getPeriodicidad()
    {
        return $this->periodicidad;
    }

    /**
     * Set facultad
     *
     * @param string $facultad
     *
     * @return Programa
     */
    public function setFacultad($facultad)
    {
        $this->facultad = $facultad;

        return $this;
    }

    /**
     * Get facultad
     *
     * @return string
     */
    public function getFacultad()
    {
        return $this->facultad;
    }

    /**
     * Set lugar
     *
     * @param string $lugar
     *
     * @return Programa
     */
    public function setLugar($lugar)
    {
        $this->lugar = $lugar;

        return $this;
    }

    /**
     * Get lugar
     *
     * @return string
     */
    public function getLugar()
    {
        return $this->lugar;
    }

    public function __construct() {
        $this->modelos = new ArrayCollection();
    }

    /**
     * Add modelo
     *
     * @param \AppBundle\Entity\Modelo $modelo
     *
     * @return Programa
     */
    public function addModelo(\AppBundle\Entity\Modelo $modelo)
    {
        $this->modelos[] = $modelo;

        return $this;
    }

    /**
     * Set modelo
     *
     * @param \AppBundle\Entity\Modelo $modelo
     *
     * @return Programa
     */
    public function setModelo(\AppBundle\Entity\Modelo $modelo = null)
    {
        $this->modelo = $modelo;

        return $this;
    }

    /**
    * Get modelos
    *
   * @return \Doctrine\Common\Collections\Collection
    */
    public function getModelos()
    {
        return $this->modelos;
    }
    
    /**
     * Generates the magic method
     * 
     */
    public function __toString(){
        return $this->nombre;
    }

    /**
     * Remove modelo
     *
     * @param \AppBundle\Entity\Modelo $modelo
     */
    public function removeModelo(\AppBundle\Entity\Modelo $modelo)
    {
        $this->modelos->removeElement($modelo);
    }
}
