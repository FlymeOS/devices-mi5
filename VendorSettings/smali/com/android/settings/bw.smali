.class final Lcom/android/vendorsettings/bw;
.super Lcom/android/vendorsettings/search/a;
.source "DataUsageSummary.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2725
    invoke-direct {p0}, Lcom/android/vendorsettings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5

    .prologue
    const v4, 0x7f0c08b9

    .line 2728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2733
    new-instance v2, Lcom/android/vendorsettings/search/n;

    invoke-direct {v2, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 2734
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 2735
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 2736
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2739
    new-instance v2, Lcom/android/vendorsettings/search/n;

    invoke-direct {v2, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 2740
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->key:Ljava/lang/String;

    .line 2741
    const v3, 0x7f0c08e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 2742
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 2743
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    new-instance v2, Lcom/android/vendorsettings/search/n;

    invoke-direct {v2, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 2747
    const-string v3, "data_usage_disable_mobile_limit"

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->key:Ljava/lang/String;

    .line 2748
    const v3, 0x7f0c08d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 2749
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 2750
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    new-instance v2, Lcom/android/vendorsettings/search/n;

    invoke-direct {v2, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 2754
    const-string v3, "data_usage_cycle"

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->key:Ljava/lang/String;

    .line 2755
    const v3, 0x7f0c08c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 2756
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 2757
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2759
    return-object v0
.end method
