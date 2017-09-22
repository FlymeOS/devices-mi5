.class Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->a(Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;Z)Z

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->aah:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->b(Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$4;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig;)Z

    .line 246
    return-void
.end method
