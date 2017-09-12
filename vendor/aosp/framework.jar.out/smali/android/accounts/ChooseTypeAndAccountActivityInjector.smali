.class public Landroid/accounts/ChooseTypeAndAccountActivityInjector;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10
    const-string v0, "com.miui.rom"

    const-string/jumbo v1, "miui.accounts.MiuiChooseAccountTypeActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    return-void
.end method
