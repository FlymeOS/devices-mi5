.class Lcom/android/vendorsettings/sim/SimDialogActivity$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

.field final synthetic apz:Landroid/telephony/SubscriptionInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apz:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apz:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->a(Lcom/android/vendorsettings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->w(Landroid/content/Context;I)V

    .line 100
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->x(Landroid/content/Context;I)V

    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/sim/SimDialogActivity;->a(Lcom/android/vendorsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$1;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->finish()V

    .line 103
    return-void
.end method
