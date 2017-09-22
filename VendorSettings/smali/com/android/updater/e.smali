.class Lcom/android/updater/e;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/updater/e;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/updater/e;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;I)I

    .line 298
    iget-object v0, p0, Lcom/android/updater/e;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->c(Lcom/android/updater/ApplyUpdateFragment;)V

    .line 299
    return-void
.end method
