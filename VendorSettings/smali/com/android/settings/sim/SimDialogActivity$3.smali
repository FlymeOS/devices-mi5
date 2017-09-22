.class Lcom/android/vendorsettings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

.field final synthetic apB:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apB:Ljava/util/List;

    iput-object p4, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 166
    iget v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$id:I

    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in SIM dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 169
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->w(Landroid/content/Context;I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->finish()V

    .line 189
    return-void

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->a(Lcom/android/vendorsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->apB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 181
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->x(Landroid/content/Context;I)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
