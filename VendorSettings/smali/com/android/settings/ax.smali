.class Lcom/android/vendorsettings/ax;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dG:Lcom/android/vendorsettings/av;

.field final synthetic dH:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/av;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/vendorsettings/ax;->dG:Lcom/android/vendorsettings/av;

    iput-object p2, p0, Lcom/android/vendorsettings/ax;->dH:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/vendorsettings/ax;->dG:Lcom/android/vendorsettings/av;

    invoke-virtual {v0}, Lcom/android/vendorsettings/av;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/ax;->dH:Landroid/os/Bundle;

    const-string v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/ChooseLockGeneric$ChooseLockGenericFragment;->a(Lcom/android/vendorsettings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 635
    return-void
.end method
