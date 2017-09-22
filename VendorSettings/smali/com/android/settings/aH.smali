.class public final Lcom/android/vendorsettings/aH;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private bR:Landroid/app/Fragment;

.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/vendorsettings/aH;->mActivity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/aH;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;)V

    .line 49
    iput-object p2, p0, Lcom/android/vendorsettings/aH;->bR:Landroid/app/Fragment;

    .line 50
    return-void
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 154
    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v1, "com.android.settings"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/aH;->bR:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/vendorsettings/aH;->bR:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/aH;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z
    .locals 10

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/vendorsettings/aH;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/vendorsettings/iC;->v(Landroid/content/Context;)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/android/vendorsettings/aH;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 144
    :goto_0
    return v0

    .line 126
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const-class v5, Lcom/android/vendorsettings/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-class v5, Lcom/android/vendorsettings/ConfirmLockPattern;

    goto :goto_1

    .line 137
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    const-class v5, Lcom/android/vendorsettings/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-class v5, Lcom/android/vendorsettings/ConfirmLockPassword;

    goto :goto_2

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 11

    .prologue
    .line 112
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 10

    .prologue
    .line 96
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method a(ILjava/lang/CharSequence;Z)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public aE()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/vendorsettings/aH;->dC:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method b(ILjava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method
