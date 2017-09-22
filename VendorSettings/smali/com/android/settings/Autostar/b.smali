.class Lcom/android/vendorsettings/Autostar/b;
.super Ljava/lang/Object;
.source "AutoMangement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bW:Lcom/android/vendorsettings/Autostar/AutoMangement;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/Autostar/AutoMangement;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/vendorsettings/Autostar/b;->bW:Lcom/android/vendorsettings/Autostar/AutoMangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/Autostar/b;->bW:Lcom/android/vendorsettings/Autostar/AutoMangement;

    iget-object v1, p0, Lcom/android/vendorsettings/Autostar/b;->bW:Lcom/android/vendorsettings/Autostar/AutoMangement;

    iget-object v1, v1, Lcom/android/vendorsettings/Autostar/AutoMangement;->bR:Landroid/app/Fragment;

    const-class v2, Lcom/android/vendorsettings/Autostar/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0c0f14

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/Autostar/AutoMangement;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 84
    return-void
.end method
