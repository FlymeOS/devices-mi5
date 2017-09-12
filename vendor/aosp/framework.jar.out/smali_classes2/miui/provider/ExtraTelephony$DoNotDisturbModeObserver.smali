.class Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;
.super Landroid/database/ContentObserver;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoNotDisturbModeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1856
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1857
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;->mContext:Landroid/content/Context;

    .line 1859
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1863
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1864
    # getter for: Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1865
    # getter for: Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1866
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmiui/provider/ExtraTelephony$QuietModeEnableListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1867
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    iget-object v2, p0, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Lmiui/provider/ExtraTelephony$QuietModeEnableListener;->onQuietModeEnableChange(Z)V

    goto :goto_0

    .line 1870
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmiui/provider/ExtraTelephony$QuietModeEnableListener;>;"
    :cond_0
    return-void
.end method
