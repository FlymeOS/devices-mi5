.class Lcom/android/updater/b;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/updater/b;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/updater/b;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->j(Lcom/android/updater/ApplyUpdateFragment;)V

    .line 535
    iget-object v0, p0, Lcom/android/updater/b;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v1, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;ZJJ)V

    .line 536
    iget-object v0, p0, Lcom/android/updater/b;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    const/4 v1, 0x3

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/updater/a/a;->a(IJJ)V

    .line 537
    return-void
.end method
