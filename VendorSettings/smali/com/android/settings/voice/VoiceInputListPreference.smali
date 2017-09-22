.class public Lcom/android/vendorsettings/voice/VoiceInputListPreference;
.super Lcom/android/vendorsettings/AppListPreferenceWithSettings;
.source "VoiceInputListPreference.java"


# instance fields
.field private auZ:Lcom/android/vendorsettings/voice/a;

.field private ava:Landroid/content/ComponentName;

.field private final avb:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    .line 29
    const v0, 0x7f0c0b21

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setDialogTitle(I)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/voice/VoiceInputListPreference;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected J()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/android/vendorsettings/voice/e;

    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vendorsettings/voice/e;-><init>(Lcom/android/vendorsettings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public a([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public h(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->ava:Landroid/content/ComponentName;

    .line 79
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 39
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/voice/c;

    .line 41
    iget-object v3, v0, Lcom/android/vendorsettings/voice/c;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_interaction_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/vendorsettings/voice/c;->auV:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/vendorsettings/voice/c;->auY:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v0, Lcom/android/vendorsettings/voice/c;->auW:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->a(Landroid/content/ComponentName;)V

    .line 69
    :goto_1
    return v6

    .line 39
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/voice/d;

    .line 57
    iget-object v1, v0, Lcom/android/vendorsettings/voice/d;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_interaction_service"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, v0, Lcom/android/vendorsettings/voice/d;->auW:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->a(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->a(Landroid/content/ComponentName;)V

    goto :goto_1
.end method

.method public vA()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/android/vendorsettings/voice/a;

    invoke-virtual {p0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/voice/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    invoke-virtual {v0}, Lcom/android/vendorsettings/voice/a;->vz()V

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->ava:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/voice/c;

    .line 93
    iget-object v6, v0, Lcom/android/vendorsettings/voice/c;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v6, v0, Lcom/android/vendorsettings/voice/c;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v0, Lcom/android/vendorsettings/voice/c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->ava:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 102
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    :goto_3
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auS:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/voice/d;

    .line 106
    iget-object v6, v0, Lcom/android/vendorsettings/voice/d;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v0, Lcom/android/vendorsettings/voice/d;->key:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    if-nez v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->avb:Ljava/util/List;

    add-int v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v1, v3

    .line 101
    goto :goto_2

    .line 112
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auT:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    :goto_4
    return-void

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auU:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auU:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 120
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public vB()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auT:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auT:Landroid/content/ComponentName;

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auU:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->auZ:Lcom/android/vendorsettings/voice/a;

    iget-object v0, v0, Lcom/android/vendorsettings/voice/a;->auU:Landroid/content/ComponentName;

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
