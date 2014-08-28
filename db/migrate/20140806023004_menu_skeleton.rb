class MenuSkeleton < ActiveRecord::Migration

  def list
    [
      ['', 'Home'],
      ['solutions', 'Solutions'],
      ['solutions/rails', 'Website Development'], # Web Development in General (ruby on rails)
      ['solutions/spree', 'Online Shop'], # Generic Store (spree)
      ['solutions/openerp', 'Enterprise Management'], # (openerp)
      ['solutions/cenit', 'Ecommerce Integration Solution'], # (cenit)
      ['solutions/spree-travel', 'Online Travel Agency'], # (spree_travel)
      ['solutions/openerp-travel', 'Travel Agency Management'], # (openerp_travel)
      ['solutions/vehicle', 'Vehicle Maintenance'], # ???????????????????
      ['solutions/pos', 'Point of Sale'], # ????????????????
      ['solutions/design', 'Web Design'], # hacemos cualquier tipo de diseño (competencias o como se llame)
      ['solutions/data', 'Data Loading - Migration'], # Carga de Datos con ... (se me olvido el nombre)

      ['portfolio', 'Portfolio'],
      ['portfolio/rubygems', 'Ruby Gems'], # all the gems
      ['portfolio/grandslam', 'GrandSlam Travel Agency'], # grandslam (spree & openerp)
      ['portfolio/cubania', 'Cubania Travel'], # ??
      ['portfolio/congo', 'Congo'], # ??
      ['portfolio/captivating', 'Captivating Cuba'], # ??
      ['portfolio/soaint', 'Soaint'], # all about soaint
      ['portfolio/moremex', 'More Mex'], # metabuscador
      ['portfolio/caws', 'Caw Project'], # las vacas
      ['portfolio/market', 'Markets'], # lo de los mercados del migue
      ['portfolio/incubator', 'Project Incubator'], # incubadora de proyectos, cosas que estan en desarrollo, etc
      ['portfolio/artmarket', 'Art Market'], # oowoo o como se llame
      ['portfolio/taxi', 'Taxi Market'], # aawaa :)
      ['portfolio/realstate', 'Real Estate'], # aawaa :)

      ['community', 'Community'],
      ['community/events', 'Events'], # all the events openjaf has gone
      ['community/survey', 'Survey'], # la (o las) entrevistas para hacer pinchas
      ['community/blog', 'Blog'], # the blog of openjaf
      ['community/social', 'Social Networks'], # facebook, twitter, linkedinn, github, etc

      ['openjaf', 'OpenJAF'],
      ['openjaf/who', 'Who we are'], # quienes somos
      ['openjaf/what', 'What we do'], # que hacemos ()
      ['openjaf/how', 'How we do it'], # que usamos, como estamos organizados, etc
      ['openjaf/why', 'Why do we do it'], # informatizar, ingresar dinero, generar empleos, la cooperativa
      ['openjaf/contact', 'Contact Us'], # contactenos
      ['openjaf/colaborate', 'Colaborate with Us'], # contactenos
    ]
  end

  def up
    # Refinery::Page.delete_all
    # list.each do |slug, name|
    #   path = "/" + slug
    #   is_home = (path == '/')
    #   parts = slug.split('/')
    #   parent_parts = parts[0..-2]
    #   parent_slug = parent_parts.join('/')
    #   parent = parent_parts.empty? ? nil : Refinery::Page.find_by_slug(parent_slug)

    #   page = Refinery::Page.new
    #   page.parent = parent
    #   page.slug = slug
    #   page.show_in_menu = (not is_home)
    #   page.draft = false
    #   page.title = name
    #   #page.link_url = path
    #   page.deletable = true
    #   page.view_template = "show"
    #   page.save

    #   ['TopPart', 'BottomPart', 'LeftSideBar', "RightSideBar", "Body"].each do |part_name|
    #     part = Refinery::PagePart.new
    #     part.title = part_name
    #     part.body = ""
    #     part.refinery_page_id = page.id
    #     part.save
    #   end

    #   say path
    # end
  end

  def down
  end
end
