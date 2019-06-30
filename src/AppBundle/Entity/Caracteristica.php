<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Caracteristica
 *
 * @ORM\Table(name="caracteristica")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CaracteristicaRepository")
 */
class Caracteristica
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
     * @ORM\Column(name="descripcion", type="text", nullable=true)
     */
    private $descripcion;

    /**
     * @var float
     *
     * @ORM\Column(name="ponderacion", type="float", nullable=true)
     */
    private $ponderacion;

    /**
     * @var float
     *
     * @ORM\Column(name="valor", type="float", nullable=true)
     */
    private $valor;

    /**
     * @var float
     *
     * @ORM\Column(name="porcentaje", type="float", nullable=true)
     */
    private $porcentaje;

    /**
     * One Caracteristica has Many Indicadores.
     * @ORM\OneToMany(targetEntity="Indicador", mappedBy="caracteristica", cascade={"persist", "remove"})
     */
    private $indicadores;

    /**
     * Many Caracteristicas have One Factor.
     * @ORM\ManyToOne(targetEntity="Factor", inversedBy="caracteristicas", cascade={"persist"})
     * @ORM\JoinColumn(name="factor", referencedColumnName="id")
     */
    private $factor;

    /**
     * Many Caracteristicas have Many Criterios.
     * @ORM\ManyToMany(targetEntity="Criterio", inversedBy="caracteristicas")
     * @ORM\JoinTable(name="criterioU")
     */
    private $criterios;


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
     * @return Caracteristica
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
     * @return Caracteristica
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
     * Set ponderacion
     *
     * @param float $ponderacion
     *
     * @return Caracteristica
     */
    public function setPonderacion($ponderacion)
    {
        $this->ponderacion = $ponderacion;

        return $this;
    }

    /**
     * Get ponderacion
     *
     * @return float
     */
    public function getPonderacion()
    {
        return $this->ponderacion;
    }

    /**
     * Set valor
     *
     * @param float $valor
     *
     * @return Caracteristica
     */
    public function setValor($valor)
    {
        $this->valor = $valor;

        return $this;
    }

    /**
     * Get valor
     *
     * @return float
     */
    public function getValor()
    {
        return $this->valor;
    }

    /**
     * Set porcentaje
     *
     * @param float $porcentaje
     *
     * @return Caracteristica
     */
    public function setPorcentaje($porcentaje)
    {
        $this->porcentaje = $porcentaje;

        return $this;
    }

    /**
     * Get porcentaje
     *
     * @return float
     */
    public function getPorcentaje()
    {
        return $this->porcentaje;
    }

    /**
     * Set factor
     *
     * @param \AppBundle\Entity\Factor $factor
     *
     * @return Caracteristica
     */
    public function setFactor(\AppBundle\Entity\Factor $factor = null)
    {
        $this->factor = $factor;

        return $this;
    }

    /**
     * Get factor
     *
     * @return \AppBundle\Entity\Factor
     */
    public function getFactor()
    {
        return $this->factor;
    }

    public function __construct() {
        $this->indicadores = new ArrayCollection();
    }

    public function __toString(){
        return $this->nombre;
    }
    /**
     * Add indicadore
     *
     * @param \AppBundle\Entity\Indicador $indicadore
     *
     * @return Caracteristica
     */
    public function addIndicadore(\AppBundle\Entity\Indicador $indicadore)
    {
        $this->indicadores[] = $indicadore;

        return $this;
    }

    /**
     * Remove indicadore
     *
     * @param \AppBundle\Entity\Indicador $indicadore
     */
    public function removeIndicadore(\AppBundle\Entity\Indicador $indicadore)
    {
        $this->indicadores->removeElement($indicadore);
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

    /**
     * Get criterios
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCriterio()
    {
        return $this->criterios;
    }

    /**
     * Add criterio
     *
     * @param \AppBundle\Entity\Criterio $criterio
     *
     * @return Caracteristica
     */
    public function addCriterio(\AppBundle\Entity\Criterio $criterio)
    {
        $this->criterios[] = $criterio;

        return $this;
    }

    /**
     * Remove criterio
     *
     * @param \AppBundle\Entity\Criterio $criterio
     */
    public function removeCriterio(\AppBundle\Entity\Criterio $criterio)
    {
        $this->criterios->removeElement($criterio);
    }

    /**
     * Get criterios
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCriterios()
    {
        return $this->criterios;
    }
}
