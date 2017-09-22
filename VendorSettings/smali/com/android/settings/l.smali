.class public Lcom/android/vendorsettings/l;
.super Landroid/widget/BaseAdapter;
.source "ActivityPicker.java"


# instance fields
.field private final D:Ljava/util/List;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 278
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/l;->mInflater:Landroid/view/LayoutInflater;

    .line 279
    iput-object p2, p0, Lcom/android/vendorsettings/l;->D:Ljava/util/List;

    .line 280
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/l;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/l;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 300
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    if-nez p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/vendorsettings/l;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 311
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/m;

    move-object v1, v2

    .line 312
    check-cast v1, Landroid/widget/TextView;

    .line 313
    iget-object v3, v0, Lcom/android/vendorsettings/m;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, v0, Lcom/android/vendorsettings/m;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
