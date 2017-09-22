.class Lcom/android/vendorsettings/hD;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zT:Lcom/android/vendorsettings/hc;

.field final synthetic zU:Lcom/android/vendorsettings/hC;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/hC;Lcom/android/vendorsettings/hc;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/vendorsettings/hD;->zU:Lcom/android/vendorsettings/hC;

    iput-object p2, p0, Lcom/android/vendorsettings/hD;->zT:Lcom/android/vendorsettings/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/vendorsettings/hD;->zU:Lcom/android/vendorsettings/hC;

    iget-object v0, v0, Lcom/android/vendorsettings/hC;->zP:Lcom/android/vendorsettings/SettingsFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/hD;->zT:Lcom/android/vendorsettings/hc;

    invoke-static {v0, p1, v1}, Lcom/android/vendorsettings/SettingsFragment;->a(Lcom/android/vendorsettings/SettingsFragment;Landroid/view/View;Lcom/android/vendorsettings/hc;)V

    .line 571
    return-void
.end method
