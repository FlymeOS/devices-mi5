.class Lcom/android/settings/gC;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xZ:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1121
    iget-object v3, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    const-string v4, "toggle VoLTE provisioned: currently %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->K(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "on"

    :goto_0
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->K(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1124
    :goto_1
    iget-object v1, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1126
    if-eqz v1, :cond_0

    .line 1127
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/settings/gD;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/gD;-><init>(Lcom/android/settings/gC;Lcom/android/ims/ImsManager;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gC;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)V

    .line 1141
    return-void

    .line 1121
    :cond_1
    const-string v0, "off"

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1123
    goto :goto_1
.end method
