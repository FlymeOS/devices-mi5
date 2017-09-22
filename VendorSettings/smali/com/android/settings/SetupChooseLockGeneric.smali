.class public Lcom/android/vendorsettings/SetupChooseLockGeneric;
.super Lcom/android/vendorsettings/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/ChooseLockGeneric;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method as()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/vendorsettings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/vendorsettings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 57
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/ChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 58
    return-void
.end method
