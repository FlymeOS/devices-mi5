.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings/search/a;
.source "InputMethodAndLanguageSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14

    .prologue
    .line 724
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 726
    const v0, 0x7f0c060b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 729
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 730
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->bA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 731
    new-instance v1, Lcom/android/settings/search/n;

    invoke-direct {v1, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 732
    const-string v2, "phone_language"

    iput-object v2, v1, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 733
    const v2, 0x7f0c060e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 734
    iput-object v0, v1, Lcom/android/settings/search/n;->Va:Ljava/lang/String;

    .line 735
    iput-object v0, v1, Lcom/android/settings/search/n;->Vb:Ljava/lang/String;

    .line 736
    iput-object v7, v1, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 737
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_0
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 742
    const-string v1, "spellcheckers_settings"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 743
    const v1, 0x7f0c093d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 744
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 745
    const v1, 0x7f0c0a27

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->apt:Ljava/lang/String;

    .line 746
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->bF(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 751
    const-string v1, "user_dict_settings"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 752
    const v1, 0x7f0c0627

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 753
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 754
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_1
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 759
    const-string v1, "keyboard_settings"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 760
    const v1, 0x7f0c060d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 761
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 762
    const v1, 0x7f0c0a35

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->apt:Ljava/lang/String;

    .line 763
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->bB(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ru()V

    .line 770
    invoke-virtual {v1, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->bC(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 772
    const-string v3, "current_input_method"

    iput-object v3, v2, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 773
    const v3, 0x7f0c063f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 774
    iput-object v0, v2, Lcom/android/settings/search/n;->Va:Ljava/lang/String;

    .line 775
    iput-object v0, v2, Lcom/android/settings/search/n;->Vb:Ljava/lang/String;

    .line 776
    iput-object v7, v2, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 777
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 783
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 784
    if-nez v8, :cond_3

    const/4 v1, 0x0

    move v3, v1

    .line 785
    :goto_0
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_5

    .line 786
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 791
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 792
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v11, :cond_4

    .line 793
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 794
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 795
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    :cond_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1, v12, v13}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 800
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 784
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 802
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 805
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    new-instance v4, Lcom/android/settings/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 811
    iput-object v2, v4, Lcom/android/settings/search/n;->Va:Ljava/lang/String;

    .line 812
    iput-object v2, v4, Lcom/android/settings/search/n;->Vb:Ljava/lang/String;

    .line 813
    iput-object v7, v4, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 814
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 818
    :cond_5
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 820
    const/4 v2, 0x0

    .line 822
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    .line 823
    const/4 v1, 0x0

    :goto_3
    array-length v3, v4

    if-ge v1, v3, :cond_a

    .line 824
    aget v3, v4, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 825
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v3

    if-nez v3, :cond_7

    .line 823
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 829
    :cond_7
    const/4 v3, 0x1

    .line 831
    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    .line 832
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 834
    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 838
    :goto_5
    if-eqz v2, :cond_9

    .line 839
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    :goto_6
    new-instance v8, Lcom/android/settings/search/n;

    invoke-direct {v8, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 845
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 846
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 847
    iput-object v2, v8, Lcom/android/settings/search/n;->Va:Ljava/lang/String;

    .line 848
    iput-object v2, v8, Lcom/android/settings/search/n;->Vb:Ljava/lang/String;

    .line 849
    iput-object v7, v8, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 850
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_4

    .line 834
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 841
    :cond_9
    const v2, 0x7f0c0625

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 853
    :cond_a
    if-eqz v2, :cond_b

    .line 855
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 856
    const-string v1, "builtin_keyboard_settings"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 857
    const v1, 0x7f0c064c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 859
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 860
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_b
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 865
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 866
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 867
    const-string v1, "tts_settings"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 868
    const v1, 0x7f0c079e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 869
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 870
    const v1, 0x7f0c0a29

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->apt:Ljava/lang/String;

    .line 871
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_c
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 876
    const-string v1, "pointer_settings_category"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 877
    const v1, 0x7f0c061d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 878
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 879
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 882
    const-string v1, "pointer_speed"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 883
    const v1, 0x7f0c061e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 884
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 885
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->oe()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 889
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 890
    const-string v1, "vibrate_input_devices"

    iput-object v1, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 891
    const v1, 0x7f0c0620

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 892
    const v1, 0x7f0c0621

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->Va:Ljava/lang/String;

    .line 893
    const v1, 0x7f0c0621

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/n;->Vb:Ljava/lang/String;

    .line 894
    iput-object v7, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 895
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_d
    return-object v6
.end method
