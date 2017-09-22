.class public Lcom/android/vendorsettings/toggleposition/a;
.super Landroid/widget/BaseAdapter;
.source "DragAdapter.java"

# interfaces
.implements Lcom/android/vendorsettings/toggleposition/b;


# instance fields
.field private AY:Lmiui/app/ToggleManager;

.field private arq:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/toggleposition/a;->arq:I

    .line 29
    iput-object p2, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->AY:Lmiui/app/ToggleManager;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public cS(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/android/vendorsettings/toggleposition/a;->arq:I

    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/toggleposition/a;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040152

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    const v0, 0x7f1302b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "item_text"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "item_image"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget v0, p0, Lcom/android/vendorsettings/toggleposition/a;->arq:I

    if-ne p1, v0, :cond_0

    .line 61
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    return-object v2
.end method

.method public r(II)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 70
    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public uE()V
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 88
    const-string v3, "item_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/a;->AY:Lmiui/app/ToggleManager;

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method
