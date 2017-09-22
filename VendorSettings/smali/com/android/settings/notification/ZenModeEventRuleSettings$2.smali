.class Lcom/android/settings/notification/ZenModeEventRuleSettings$2;
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
    .line 126
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v0, v1, :cond_0

    .line 133
    :goto_0
    return v2

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iput v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->akY:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->d(Landroid/net/Uri;)V

    goto :goto_0
.end method
