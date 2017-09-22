.class Lcom/android/vendorsettings/wifi/t;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aAN:Lcom/android/vendorsettings/wifi/s;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/s;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/t;->aAN:Lcom/android/vendorsettings/wifi/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/t;->aAN:Lcom/android/vendorsettings/wifi/s;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/s;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->g(Z)V

    .line 149
    return-void
.end method
