<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Indicador
 *
 * @ORM\Table(name="indicador")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\IndicadorRepository")
 */
class Indicador
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
     * @ORM\Column(name="nombre", type="text")
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text", nullable=true)
     */
    private $descripcion;

    /**
     * Many Indicadores have One Caracteristica.
     * @ORM\ManyToOne(targetEntity="Caracteristica", inversedBy="indicadores", cascade={"persist"})
     * @ORM\JoinColumn(name="caracteristica", referencedColumnName="id")
     */
    private $caracteristica;

    /**
     * Many Indicadores have Many Recursos.
     * @ORM\ManyToMany(targetEntity="Recurso", inversedBy="indicadores")
     * @ORM\JoinTable(name="recursoU")
     */
    private $recursos;


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
     * @return Indicador
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
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Indicador
     */
    public function setRipcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getRipcion()
    {
        return $this->descripcion;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Indicador
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set caracteristica
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristica
     *
     * @return Indicador
     */
    public function setCaracteristica(\AppBundle\Entity\Caracteristica $caracteristica = null)
    {
        $this->caracteristica = $caracteristica;

        return $this;
    }

    /**
     * Get caracteristica
     *
     * @return \AppBundle\Entity\Caracteristica
     */
    public function getCaracteristica()
    {
        return $this->caracteristica;
    }

    public function __toString(){
        return $this->nombre;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->recursos = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add recurso
     *
     * @param \AppBundle\Entity\Recurso $recurso
     *
     * @return Indicador
     */
    public function addRecurso(\AppBundle\Entity\Recurso $recurso)
    {
        $this->recursos[] = $recurso;

        return $this;
    }

    /**
     * Remove recurso
     *
     * @param \AppBundle\Entity\Recurso $recurso
     */
    public function removeRecurso(\AppBundle\Entity\Recurso $recurso)
    {
        $this->recursos->removeElement($recurso);
    }

    /**
     * Get recursos
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getRecursos()
    {
        return $this->recursos;
    }
}
