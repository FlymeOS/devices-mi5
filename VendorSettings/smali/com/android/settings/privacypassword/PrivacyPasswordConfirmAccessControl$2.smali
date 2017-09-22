.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Lcom/android/settings/dN;


# instance fields
.field final synthetic aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 131
    const-string v0, "PrivacyPasswordConfirmAccessControl"

    const-string v1, "onPatternCellAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(ZLjava/util/List;)V

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->c(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(JLandroid/content/Context;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->c(J)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->tA()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aon:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->d(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method
