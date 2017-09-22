.class Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# instance fields
.field private apC:I

.field final synthetic apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    .line 193
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 194
    iput-object p2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    .line 195
    iput p3, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->apC:I

    .line 196
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 239
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->d(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 240
    iget-object v2, v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    :goto_0
    iget-object v0, v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    return-object v1

    .line 242
    :cond_0
    iget-object v2, v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 207
    const v3, 0x7f0b00ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 209
    if-nez p2, :cond_0

    .line 211
    iget v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->apC:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 212
    new-instance v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/vendorsettings/sim/SimPreferenceDialog$1;)V

    .line 213
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 214
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 215
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 216
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    const v0, 0x7f1302a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apP:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f1302a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 219
    iput-object v4, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    .line 220
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_0
    iget-object v2, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apP:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->c(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->apQ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-object p2

    .line 223
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
