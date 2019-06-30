<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Criterio
 *
 * @ORM\Table(name="criterio")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CriterioRepository")
 */
class Criterio
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
     * @ORM\Column(name="nombre", type="string", length=64)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text")
     */
    private $descripcion;

    /**
     * Many Criterios have Many Caracteristicas.
     * @ORM\ManyToMany(targetEntity="Caracteristica", mappedBy="criterios")
     */
    private $caracteristicas;


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
     * @return Criterio
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
     * @return Criterio
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
     * Constructor
     */
    public function __construct()
    {
        $this->caracteristics = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add caracteristic
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristic
     *
     * @return Criterio
     */
    public function addCaracteristic(\AppBundle\Entity\Caracteristica $caracteristic)
    {
        $this->caracteristics[] = $caracteristic;

        return $this;
    }

    /**
     * Remove caracteristic
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristic
     */
    public function removeCaracteristic(\AppBundle\Entity\Caracteristica $caracteristic)
    {
        $this->caracteristics->removeElement($caracteristic);
    }

    /**
     * Get caracteristics
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCaracteristics()
    {
        return $this->caracteristics;
    }

    /**
     * Add caracteristica
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristica
     *
     * @return Criterio
     */
    public function addCaracteristica(\AppBundle\Entity\Caracteristica $caracteristica)
    {
        $this->caracteristicas[] = $caracteristica;

        return $this;
    }

    /**
     * Remove caracteristica
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristica
     */
    public function removeCaracteristica(\AppBundle\Entity\Caracteristica $caracteristica)
    {
        $this->caracteristicas->removeElement($caracteristica);
    }

    /**
     * Get caracteristicas
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCaracteristicas()
    {
        return $this->caracteristicas;
    }
}
