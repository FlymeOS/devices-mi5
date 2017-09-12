.class public Lmiui/securitycenter/applicationlock/ApplicationLockHelper;
.super Ljava/lang/Object;
.source "ApplicationLockHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 17
    return-void
.end method


# virtual methods
.method public checkLockPattern(Ljava/lang/String;)Z
    .locals 5
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "check":Z
    :try_start_0
    iget-object v3, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v3, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v4, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/security/MiuiLockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    .end local v2    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearAppLock()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->clearLock(I)V

    .line 48
    return-void
.end method

.method public getLockoutAttempt()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isVisiblePatternLock()Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public saveLockPatternExists()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    return v0
.end method

.method public setLockoutAttempt()J
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0
.end method
