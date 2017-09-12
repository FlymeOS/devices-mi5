.class Lmiui/maml/MamlConfigSettings$NumberInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 553
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 568
    const-wide/16 v0, 0x0

    .line 570
    .local v0, "d":D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 574
    :goto_0
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 571
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 579
    const-wide/16 v0, 0x0

    .line 581
    .local v0, "d":D
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 586
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v4}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 591
    const/4 v4, 0x1

    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return v4

    .line 582
    :catch_0
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 557
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 596
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    .line 597
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 598
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 565
    return-void
.end method
