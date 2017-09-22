.class Lcom/android/settings/hD;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zT:Lcom/android/settings/hc;

.field final synthetic zU:Lcom/android/settings/hC;


# direct methods
.method constructor <init>(Lcom/android/settings/hC;Lcom/android/settings/hc;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings/hD;->zU:Lcom/android/settings/hC;

    iput-object p2, p0, Lcom/android/settings/hD;->zT:Lcom/android/settings/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/hD;->zU:Lcom/android/settings/hC;

    iget-object v0, v0, Lcom/android/settings/hC;->zP:Lcom/android/settings/SettingsFragment;

    iget-object v1, p0, Lcom/android/settings/hD;->zT:Lcom/android/settings/hc;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/hc;)V

    .line 571
    return-void
.end method
