.class Lcom/android/vendorsettings/gu;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->b(Lcom/android/vendorsettings/RadioInfo;Z)Z

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->h(Lcom/android/vendorsettings/RadioInfo;)V

    .line 193
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 181
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->f(Lcom/android/vendorsettings/RadioInfo;)V

    .line 176
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 205
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->b(Lcom/android/vendorsettings/RadioInfo;)V

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->c(Lcom/android/vendorsettings/RadioInfo;)V

    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->d(Lcom/android/vendorsettings/RadioInfo;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->e(Lcom/android/vendorsettings/RadioInfo;)V

    .line 171
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->g(Lcom/android/vendorsettings/RadioInfo;)V

    .line 187
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/gu;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;)V

    .line 163
    return-void
.end method
