<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Recurso
 *
 * @ORM\Table(name="recurso")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\RecursoRepository")
 */
class Recurso
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
     * @ORM\Column(name="tipo", type="string", length=32)
     */
    private $tipo;

    /**
     * @var string
     *
     * @ORM\Column(name="enlace", type="string", length=255, nullable=true)
     */
    private $enlace;

    /**
     * Many Recursos have Many Indicadores.
     * @ORM\ManyToMany(targetEntity="Indicador", mappedBy="recursos")
     */
    private $indicadores;

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
     * @return Recurso
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
     * Set tipo
     *
     * @param string $tipo
     *
     * @return Recurso
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return string
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set enlace
     *
     * @param string $enlace
     *
     * @return Recurso
     */
    public function setEnlace($enlace)
    {
        $this->enlace = $enlace;

        return $this;
    }

    /**
     * Get enlace
     *
     * @return string
     */
    public function getEnlace()
    {
        return $this->enlace;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->indicadores = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add indicador
     *
     * @param \AppBundle\Entity\Indicador $indicador
     *
     * @return Recurso
     */
    public function addIndicador(\AppBundle\Entity\Indicador $indicador)
    {
        $this->indicadores[] = $indicador;

        return $this;
    }

    /**
     * Generates the magic method
     * 
     */
    public function __toString(){
        return $this->nombre;
    }

    /**
     * Remove indicador
     *
     * @param \AppBundle\Entity\Indicador $indicador
     */
    public function removeIndicadore(\AppBundle\Entity\Indicador $indicador)
    {
        $this->indicadores->removeElement($indicador);
    }

    /**
     * Get indicadores
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIndicadores()
    {
        return $this->indicadores;
    }

}
