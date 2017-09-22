.class final Lcom/android/settings/sim/SimSettings$3;
.super Lcom/android/settings/search/a;
.source "SimSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-static {p1}, Lcom/android/settings/iC;->ag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 322
    const v2, 0x7f08009d

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    return-object v0
.end method
