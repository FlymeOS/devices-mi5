.class Lcom/android/settings/dndmode/B;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic abl:Lcom/android/settings/dndmode/A;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/A;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings/dndmode/B;->abl:Lcom/android/settings/dndmode/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/dndmode/B;->abl:Lcom/android/settings/dndmode/A;

    invoke-static {v0}, Lcom/android/settings/dndmode/A;->a(Lcom/android/settings/dndmode/A;)Lcom/android/settings/dndmode/C;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings/dndmode/B;->abl:Lcom/android/settings/dndmode/A;

    invoke-static {v0}, Lcom/android/settings/dndmode/A;->a(Lcom/android/settings/dndmode/A;)Lcom/android/settings/dndmode/C;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/B;->abl:Lcom/android/settings/dndmode/A;

    invoke-static {v1}, Lcom/android/settings/dndmode/A;->b(Lcom/android/settings/dndmode/A;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/settings/dndmode/C;->r(J)V

    .line 410
    :cond_0
    return-void
.end method
