.class Lcom/android/vendorsettings/gx;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/vendorsettings/gx;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1021
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1022
    iget-object v1, p0, Lcom/android/vendorsettings/gx;->xZ:Lcom/android/vendorsettings/RadioInfo;

    const-class v2, Lcom/android/vendorsettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1023
    iget-object v1, p0, Lcom/android/vendorsettings/gx;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 1024
    const/4 v0, 0x1

    return v0
.end method
