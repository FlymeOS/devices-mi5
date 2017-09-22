.class public Lcom/android/settings/wifi/m;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field final synthetic aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 180
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 190
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 182
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->c(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    goto :goto_0

    .line 186
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->d(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x102001a -> :sswitch_1
        0x7f13030b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 197
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/m;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->e(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/S;

    invoke-virtual {v0, p5}, Lcom/android/settings/wifi/S;->bG(Z)V

    .line 201
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method
