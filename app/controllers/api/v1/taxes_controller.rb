class Api::V1::TaxesController < ApplicationController
  before_action :set_tax, only: [:show, :update, :destroy]

  # GET /api/v1/taxes
  # GET /api/v1/taxes.json
  def index
    @taxes = Tax.all

    render json: @taxes
  end

  # GET /api/v1/taxes/1
  # GET /api/v1/taxes/1.json
  def show
    render json: @tax
  end

  # POST /api/v1/taxes
  # POST /api/v1/taxes.json
  def create
    @tax = Tax.new(tax_params)

    if @tax.save
      render json: @tax, status: :created, location: @tax
    else
      render json: @tax.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/taxes/1
  # PATCH/PUT /api/v1/taxes/1.json
  def update
    @tax = Tax.find(params[:id])

    if @tax.update(tax_params)
      head :no_content
    else
      render json: @tax.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/taxes/1
  # DELETE /api/v1/taxes/1.json
  def destroy
    @tax.destroy

    head :no_content
  end

  private

    def set_tax
      @tax = Tax.find(params[:id])
    end

    def tax_params
      params.require(:tax).permit(:name, :rate)
    end
end
