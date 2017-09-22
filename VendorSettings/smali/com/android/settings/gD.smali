.class Lcom/android/vendorsettings/gD;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;

.field final synthetic ya:Z

.field final synthetic yb:Lcom/android/vendorsettings/gC;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/gC;Lcom/android/ims/ImsManager;Z)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/vendorsettings/gD;->yb:Lcom/android/vendorsettings/gC;

    iput-object p2, p0, Lcom/android/vendorsettings/gD;->val$imsManager:Lcom/android/ims/ImsManager;

    iput-boolean p3, p0, Lcom/android/vendorsettings/gD;->ya:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/gD;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    const/16 v2, 0xa

    iget-boolean v0, p0, Lcom/android/vendorsettings/gD;->ya:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_1
    return-void

    .line 1130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    const-string v1, "phone"

    const-string v2, "setImsVoLteProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
