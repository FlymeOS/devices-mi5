.class Lcom/android/settings/hC;
.super Landroid/widget/ArrayAdapter;
.source "SettingsFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private uJ:Ljava/lang/String;

.field final synthetic zP:Lcom/android/settings/SettingsFragment;

.field private final zS:I


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings/hC;->zP:Lcom/android/settings/SettingsFragment;

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 496
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/hC;->zS:I

    .line 505
    iput-object p2, p0, Lcom/android/settings/hC;->mContext:Landroid/content/Context;

    .line 506
    iput-object p3, p0, Lcom/android/settings/hC;->mList:Ljava/util/List;

    .line 507
    iget-object v0, p0, Lcom/android/settings/hC;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/hC;->mInflater:Landroid/view/LayoutInflater;

    .line 508
    iget-object v0, p0, Lcom/android/settings/hC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hC;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 509
    # invokes: Lcom/android/settings/SettingsFragment;->getLanguage()Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsFragment;->access$1400()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hC;->uJ:Ljava/lang/String;

    .line 510
    return-void
.end method

.method private a(Lcom/android/settings/hc;)I
    .locals 1

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/android/settings/hc;->getType()I

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/android/settings/hB;Lcom/android/settings/hc;)V
    .locals 4

    .prologue
    .line 555
    invoke-virtual {p3}, Lcom/android/settings/hc;->hn()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p3}, Lcom/android/settings/hc;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/settings/hC;->zP:Lcom/android/settings/SettingsFragment;

    iget-object v2, p0, Lcom/android/settings/hC;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v2}, Lcom/android/settings/SettingsFragment;->l(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/hC;->uJ:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 561
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p2, Lcom/android/settings/hB;->ln:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_1
    invoke-virtual {p3}, Lcom/android/settings/hc;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    iget-object v0, p2, Lcom/android/settings/hB;->zR:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings/hc;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_2
    if-eqz p1, :cond_3

    .line 568
    new-instance v0, Lcom/android/settings/hD;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/hD;-><init>(Lcom/android/settings/hC;Lcom/android/settings/hc;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    :cond_3
    return-void
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/hC;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/android/settings/hC;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x927c0

    invoke-static {p1, v0, v1, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 524
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ae(I)Lcom/android/settings/hc;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/hC;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hc;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings/hC;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings/hC;->ae(I)Lcom/android/settings/hc;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 551
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/settings/hC;->ae(I)Lcom/android/settings/hc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/hC;->a(Lcom/android/settings/hc;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/settings/hC;->ae(I)Lcom/android/settings/hc;

    move-result-object v2

    .line 579
    invoke-direct {p0, v2}, Lcom/android/settings/hC;->a(Lcom/android/settings/hc;)I

    move-result v3

    .line 581
    if-eqz p2, :cond_1

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hB;

    move-object v1, v0

    .line 608
    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 627
    :goto_1
    :pswitch_0
    return-object p2

    .line 585
    :cond_1
    new-instance v1, Lcom/android/settings/hB;

    invoke-direct {v1, v0}, Lcom/android/settings/hB;-><init>(Lcom/android/settings/hw;)V

    .line 586
    packed-switch v3, :pswitch_data_1

    move-object p2, v0

    .line 604
    :goto_2
    if-eqz p2, :cond_0

    .line 605
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/hC;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040132

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/hC;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lmiui/R$attr;->preferenceWithIconBackground:I

    invoke-static {v0, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 592
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 593
    const v0, 0x7f130293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/hB;->icon:Landroid/widget/ImageView;

    .line 594
    const v0, 0x7f130294

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/hB;->ln:Landroid/widget/TextView;

    .line 595
    const v0, 0x7f130295

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/hB;->zR:Landroid/widget/TextView;

    goto :goto_2

    .line 598
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/hC;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04012f

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 601
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/hC;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040130

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 610
    :pswitch_4
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/hC;->a(Landroid/view/View;Lcom/android/settings/hB;Lcom/android/settings/hc;)V

    .line 611
    invoke-static {}, Lcom/android/settings/SettingsFragment;->hP()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/settings/hc;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_2

    .line 613
    iget-object v1, v1, Lcom/android/settings/hB;->icon:Landroid/widget/ImageView;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, v1, Lcom/android/settings/hB;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/hC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/settings/hc;->hq()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/hC;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 619
    :pswitch_5
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/hC;->a(Landroid/view/View;Lcom/android/settings/hB;Lcom/android/settings/hc;)V

    .line 620
    iget-object v0, v1, Lcom/android/settings/hB;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 586
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x4

    return v0
.end method

.method public r(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings/hC;->mList:Ljava/util/List;

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/hC;->notifyDataSetChanged()V

    .line 515
    return-void
.end method
