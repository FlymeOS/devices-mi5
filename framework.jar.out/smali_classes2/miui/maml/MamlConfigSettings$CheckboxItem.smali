.class Lmiui/maml/MamlConfigSettings$CheckboxItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 428
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "isTrue":Z
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 444
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 448
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x1

    return v1

    .line 445
    .restart local p1    # "objValue":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 448
    .end local p1    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 432
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    return-void
.end method
