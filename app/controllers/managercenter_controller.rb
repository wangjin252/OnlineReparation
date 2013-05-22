class ManagercenterController < ApplicationController
  def managerindex
  end

  def materials
    @materials = Material.page(params[:page]).per(10)
  end

  def accendants
    @users = User.where(:usertype => 2).order("created_at DESC").page(params[:page]).per(10)
  end

  def messages
    @news = News.page(params[:page]).per(10)
    @announcements = Announcement.page(params[:page]).per(10)
  end

  def informations
  end

  def save_accendant
    user = User.find(params[:id])
    user.username = params[:username]
    user.password = params[:password]
    user.realname = params[:realname]
    user.cellphone = params[:cellphone]
    user.email = params[:email]
    user.save
  end

  def add_accendant
    user = User.new(:username => params[:username],
                    :password => params[:password],
                    :realname => params[:realname],
                    :cellphone => params[:cellphone],
                    :email => params[:email],
                    :usertype => 2)
    user.save
  end

  def delete_accendant
    user = User.find(params[:id])
    user.delete
  end

  def add_material
    material = Material.new(:materialname => params[:materialname],
                            :materialtype => params[:materialtype],
                            :materialprice => params[:materialprice],
                            :materialamount => params[:materialamount])
    material.save
  end

  def delete_material
    material = Material.find(params[:id])
    material.delete
  end

  def save_material
    material = Material.find(params[:id])
    material.materialname = params[:materialname]
    material.materialtype = params[:materialtype]
    material.materialamount = params[:materialamount]
    material.materialprice = params[:materialprice]
    material.save
  end

end
