.class public Lcom/android/vendorsettings/fq;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private tn:Ljava/util/HashMap;

.field private tp:Ljava/util/HashMap;

.field private tq:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

.field private tr:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 694
    iput-object p3, p0, Lcom/android/vendorsettings/fq;->tq:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 695
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    .line 697
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303b9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lmiui/widget/SlidingButton;

    invoke-direct {v4, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;-><init>(Landroid/content/Context;Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iput-boolean p4, p0, Lcom/android/vendorsettings/fq;->tr:Z

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    .line 701
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f130391

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/wifi/aD;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/wifi/aD;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f13038d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303b8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/wifi/V;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/wifi/V;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303b0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/accounts/XiaomiAccountStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/accounts/XiaomiAccountStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303ac

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/display/k;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/display/k;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303bd

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/display/x;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/display/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    const-wide/32 v2, 0x7f1303ba

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/vpn2/VpnStatusController;

    invoke-direct {v2, p1, v5}, Lcom/android/vendorsettings/vpn2/VpnStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method private a(Lcom/android/vendorsettings/fr;Landroid/preference/PreferenceActivity$Header;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 861
    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303b7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303b2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 865
    :cond_2
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 866
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 870
    :cond_3
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 871
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 873
    :cond_4
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2

    .prologue
    .line 643
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0

    .line 645
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fq;->k(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    const/4 v0, 0x4

    goto :goto_0

    .line 647
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fq;->l(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    const/4 v0, 0x3

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "header_update"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    const/4 v0, 0x2

    goto :goto_0

    .line 652
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 847
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 848
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 850
    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 854
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 855
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 858
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/vendorsettings/fr;Landroid/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 880
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    const-string v1, "com.xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020306

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 892
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->tq:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 893
    iget-object v1, p1, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 896
    :cond_3
    iget v0, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p1, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    iget v1, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 669
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fq;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v8, 0x1020010

    const v7, 0x1020006

    const v6, 0x1020016

    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 712
    .line 713
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 714
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fq;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 717
    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/fr;

    move-object v3, v1

    .line 765
    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 835
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/vendorsettings/fq;->b(Lcom/android/vendorsettings/fr;Landroid/preference/PreferenceActivity$Header;)V

    .line 836
    invoke-direct {p0, v3, v0}, Lcom/android/vendorsettings/fq;->a(Lcom/android/vendorsettings/fr;Landroid/preference/PreferenceActivity$Header;)V

    .line 837
    return-object p2

    .line 721
    :cond_2
    new-instance v3, Lcom/android/vendorsettings/fr;

    invoke-direct {v3}, Lcom/android/vendorsettings/fr;-><init>()V

    .line 722
    packed-switch v4, :pswitch_data_1

    .line 756
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 759
    :cond_3
    :goto_2
    if-eqz p2, :cond_0

    .line 760
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 724
    :pswitch_0
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lmiui/R$layout;->preference_category:I

    invoke-virtual {v1, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 725
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    goto :goto_2

    .line 729
    :pswitch_1
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 730
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    .line 731
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    .line 732
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    .line 733
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 734
    iget-object v5, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400dc

    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 735
    const v5, 0x7f1301bd

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->tt:Lmiui/widget/SlidingButton;

    .line 736
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_3

    .line 738
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 745
    :pswitch_2
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 746
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_4

    .line 747
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_4
    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 750
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    .line 751
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    .line 752
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    .line 753
    sget v1, Lmiui/R$id;->value_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/vendorsettings/fr;->tu:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 767
    :pswitch_3
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 769
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    if-eqz p2, :cond_1

    .line 771
    sget v1, Lmiui/R$drawable;->preference_category_background_no_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 774
    :cond_5
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    if-eqz p2, :cond_1

    .line 777
    if-nez p1, :cond_6

    sget v1, Lmiui/R$drawable;->preference_category_background_first:I

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_6
    sget v1, Lmiui/R$drawable;->preference_category_background:I

    goto :goto_3

    .line 785
    :pswitch_4
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/ac;

    .line 786
    if-eqz v1, :cond_7

    .line 787
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Lcom/android/vendorsettings/ac;->a(Landroid/widget/TextView;)V

    .line 788
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->tt:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v5}, Lcom/android/vendorsettings/ac;->a(Lmiui/widget/SlidingButton;)V

    .line 789
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->tt:Lmiui/widget/SlidingButton;

    invoke-virtual {v5, v1}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    .line 795
    :cond_7
    :pswitch_5
    iget-object v1, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/ag;

    .line 796
    if-eqz v1, :cond_8

    .line 797
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->tu:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Lcom/android/vendorsettings/ag;->b(Landroid/widget/TextView;)V

    .line 798
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->tu:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 801
    :cond_8
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 802
    const-string v5, "system_app"

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 803
    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 804
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "."

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 805
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 806
    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 809
    :cond_9
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lmiui/R$attr;->preferenceWithIconBackground:I

    invoke-static {v1, v5}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 811
    if-eqz p2, :cond_a

    .line 812
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 814
    :cond_a
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/vendorsettings/fq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 816
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 817
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    iget-object v5, v3, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :goto_4
    const/4 v1, 0x2

    if-ne v4, v1, :cond_b

    .line 825
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    .line 826
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "header_update"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 828
    :goto_5
    iget-object v2, v3, Lcom/android/vendorsettings/fr;->icon:Landroid/widget/ImageView;

    if-gtz v1, :cond_d

    const v1, 0x7f0201b7

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/fq;->d(Landroid/view/View;)V

    goto/16 :goto_1

    .line 820
    :cond_c
    iget-object v1, v3, Lcom/android/vendorsettings/fr;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 828
    :cond_d
    const v1, 0x7f0201b8

    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_5

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fq;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(J)Z
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 658
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l(J)Z
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 663
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 916
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ac;

    .line 917
    invoke-virtual {v0}, Lcom/android/vendorsettings/ac;->pause()V

    goto :goto_0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 921
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ag;

    .line 922
    invoke-virtual {v0}, Lcom/android/vendorsettings/ag;->pause()V

    goto :goto_1

    .line 924
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ac;

    .line 905
    invoke-virtual {v0}, Lcom/android/vendorsettings/ac;->resume()V

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fq;->tp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 909
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ag;

    .line 910
    invoke-virtual {v0}, Lcom/android/vendorsettings/ag;->resume()V

    goto :goto_1

    .line 912
    :cond_1
    return-void
.end method
