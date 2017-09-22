.class Lcom/android/settings/hs;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zB:Lcom/android/settings/hn;


# direct methods
.method constructor <init>(Lcom/android/settings/hn;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/settings/hs;->zB:Lcom/android/settings/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/settings/hs;->zB:Lcom/android/settings/hn;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/hs;->zB:Lcom/android/settings/hn;

    invoke-virtual {v2}, Lcom/android/settings/hn;->hL()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/hn;->setResult(ILandroid/content/Intent;)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/hs;->zB:Lcom/android/settings/hn;

    invoke-virtual {v0}, Lcom/android/settings/hn;->finish()V

    .line 745
    return-void
.end method
