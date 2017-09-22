.class Lcom/android/settings/notification/ZenModeEventRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Lcom/android/settings/cO;


# instance fields
.field final synthetic akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    check-cast p2, Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->e(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return v3

    .line 108
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 110
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->d(Landroid/net/Uri;)V

    goto :goto_0
.end method
