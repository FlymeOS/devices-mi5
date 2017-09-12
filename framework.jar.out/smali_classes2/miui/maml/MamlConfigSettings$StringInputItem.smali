.class Lmiui/maml/MamlConfigSettings$StringInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 469
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 470
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x1

    return v1
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 458
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    .line 478
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 465
    return-void
.end method
