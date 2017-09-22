.class Lcom/android/settings/wifi/aB;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aEi:Lcom/android/settings/wifi/az;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/az;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/wifi/aB;->aEi:Lcom/android/settings/wifi/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/aB;->aEi:Lcom/android/settings/wifi/az;

    invoke-virtual {v0}, Lcom/android/settings/wifi/az;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->cf(I)V

    .line 268
    return-void
.end method
