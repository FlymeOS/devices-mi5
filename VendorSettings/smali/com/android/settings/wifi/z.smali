.class Lcom/android/vendorsettings/wifi/z;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

.field final synthetic aAP:Lcom/android/vendorsettings/d/f;

.field final synthetic iy:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;Lcom/android/vendorsettings/d/f;Landroid/net/NetworkTemplate;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/z;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/wifi/z;->aAP:Lcom/android/vendorsettings/d/f;

    iput-object p3, p0, Lcom/android/vendorsettings/wifi/z;->iy:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/z;->aAP:Lcom/android/vendorsettings/d/f;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/z;->iy:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p2}, Lcom/android/vendorsettings/d/f;->a(Landroid/net/NetworkTemplate;Z)V

    .line 284
    return-void
.end method
