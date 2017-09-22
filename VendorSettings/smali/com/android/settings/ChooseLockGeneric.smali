.class public Lcom/android/vendorsettings/ChooseLockGeneric;
.super Lcom/android/vendorsettings/hn;
.source "ChooseLockGeneric.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/vendorsettings/hn;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method as()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/vendorsettings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/hn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 59
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/vendorsettings/ChooseLockGeneric;->as()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/vendorsettings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
