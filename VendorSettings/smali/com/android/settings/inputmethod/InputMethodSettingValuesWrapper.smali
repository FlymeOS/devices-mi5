.class Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile ago:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;


# instance fields
.field private final agp:Ljava/util/ArrayList;

.field private final agq:Ljava/util/HashMap;

.field private final agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private final ags:Ljava/util/HashSet;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agp:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ags:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agp:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->rt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 77
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ru()V

    .line 79
    return-void
.end method

.method static bB(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ago:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_1

    .line 55
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ago:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ago:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ago:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private bD(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v2

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 165
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :cond_0
    if-nez v1, :cond_1

    .line 167
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v2, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static rt()I
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rv()V
    .locals 8

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 100
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    .line 101
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 103
    const-string v6, "keyboard"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    return-void
.end method


# virtual methods
.method a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->d(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v3

    .line 134
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v0, :cond_0

    if-eqz v2, :cond_0

    .line 135
    monitor-exit v3

    .line 152
    :goto_0
    return v0

    .line 137
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->bD(Landroid/content/Context;)I

    move-result v3

    .line 141
    if-le v3, v0, :cond_1

    move v0, v1

    .line 142
    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 145
    :cond_1
    if-ne v3, v0, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return v4

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v2

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v1, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "keyboard"

    invoke-static {p1, v0, v4, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method bC(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 122
    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid selected imi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, ""

    monitor-exit v1

    .line 127
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 127
    invoke-static {p1, v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agr:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 178
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInputMethodList()Ljava/util/List;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agp:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ru()V
    .locals 5

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 88
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->agq:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->rv()V

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void
.end method
