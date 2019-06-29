<?php

namespace AppBundle\Form;

use AppBundle\Entity\Recurso;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class RecursoType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class, array('label' => 'Nombre del nuevo documento que desea relacionar', 'required' => true))
                ->add('tipo', ChoiceType::class, array(
                    'choices'=>
                        ['Documental' => 'Documental', 'Encuesta' => 'Encuesta'],
                ))
                /*->add('indicadores', EntityType::class,
                    [
                        'class'=>'AppBundle:Indicador',
                        'choice_label'=>'nombre',
                        'label'=>'Indicadores a los que esta asociados',
                        'placeholder'=>'Seleccione los indicadores a los que desea asociar el archivo',
                        'multiple'=>true,
                    ])*/
                ->add('enlace', FileType::class, [
                    'label' => 'Seleccione un archivo para subir (PDF, Excel, PowerPoint, Word)',
                    'mapped' => false,
                    'multiple' => false,
                    // falso para no tener que subir el archivo cada vez que edite esto
                    'required' => false,
                    'constraints' => [
                        new File([
                            'maxSize' => '10280k',
                            'mimeTypes' => [
                                'application/pdf',
                                'application/x-pdf',
                                'application/msword',
                                'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                                'application/vnd.ms-powerpoint',
                                'application/vnd.openxmlformats-officedocument.presentationml.presentation',
                                'application/vnd.ms-excel',
                                'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                            ],
                            'mimeTypesMessage' => 'Por favor suba un documento válido (PDF, ppt, xls, doc)',
                            'maxSizeMessage' => 'El tamaño del archivo es muy grande ({{ size }} {{ suffix }}). El máximo permitido es {{ limit }} {{ suffix }}',
                        ])
                    ]
                ])
            ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Recurso'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_recurso';
    }


}
