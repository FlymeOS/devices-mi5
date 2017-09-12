.class final Lcom/android/internal/app/ResolverActivity$PageGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "page"    # I

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1623
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1624
    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 1625
    .local v0, "count":I
    add-int/lit8 v4, p3, -0x1

    mul-int/lit8 v3, v4, 0x8

    .line 1626
    .local v3, "start":I
    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1627
    .local v1, "end":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1628
    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->add(Ljava/lang/Object;)V

    .line 1627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1630
    :cond_0
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1655
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1658
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1660
    new-instance v2, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v2, v3, p0, p2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/BaseAdapter;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1662
    :cond_0
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1664
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1665
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1666
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1668
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1673
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-void

    .line 1670
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1635
    if-nez p2, :cond_0

    .line 1636
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1103000e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1639
    .local v2, "view":Landroid/view/View;
    const v3, 0x110b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MaskLayout;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaskColor:I
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MaskLayout;->setMaskColor(I)V

    .line 1640
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1641
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1644
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1645
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1649
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1650
    return-object v2

    .line 1647
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method
