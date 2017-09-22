.class Lcom/android/settings/gu;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;Z)Z

    .line 192
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->h(Lcom/android/settings/RadioInfo;)V

    .line 193
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 181
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->f(Lcom/android/settings/RadioInfo;)V

    .line 176
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 205
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->d(Lcom/android/settings/RadioInfo;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->e(Lcom/android/settings/RadioInfo;)V

    .line 171
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->g(Lcom/android/settings/RadioInfo;)V

    .line 187
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 162
    iget-object v0, p0, Lcom/android/settings/gu;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;)V

    .line 163
    return-void
.end method
