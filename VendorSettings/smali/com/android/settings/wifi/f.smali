.class Lcom/android/vendorsettings/wifi/f;
.super Ljava/lang/Object;
.source "EditTetherFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/EditTetherFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    invoke-static {v0, p3}, Lcom/android/vendorsettings/wifi/EditTetherFragment;->a(Lcom/android/vendorsettings/wifi/EditTetherFragment;I)I

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/EditTetherFragment;->a(Lcom/android/vendorsettings/wifi/EditTetherFragment;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/EditTetherFragment;->b(Lcom/android/vendorsettings/wifi/EditTetherFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config on channelIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/EditTetherFragment;->a(Lcom/android/vendorsettings/wifi/EditTetherFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/f;->aAl:Lcom/android/vendorsettings/wifi/EditTetherFragment;

    iget-object v2, v2, Lcom/android/vendorsettings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
