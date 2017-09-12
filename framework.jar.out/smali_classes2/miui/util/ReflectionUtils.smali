.class public Lmiui/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"

.field private static final constructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/util/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 800
    .local p2, "returnValueClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 801
    .local v0, "returnedValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Lmiui/util/ReflectionUtils;->checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "returnValueClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 847
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 848
    .local v2, "returnedValue":Ljava/lang/Object;
    invoke-static {v2, p2}, Lmiui/util/ReflectionUtils;->checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 849
    .end local v2    # "returnedValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "ReflectionUtils"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    if-nez p0, :cond_2

    .line 777
    const/4 p0, 0x0

    .line 783
    .end local p0    # "value":Ljava/lang/Object;
    :cond_1
    return-object p0

    .line 779
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_1

    .line 782
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "returnedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "returnValueClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 889
    if-nez p0, :cond_1

    move-object p0, v0

    .line 899
    .end local p0    # "returnedValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 892
    .restart local p0    # "returnedValue":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 895
    const-class v1, Ljava/lang/Void;

    if-ne p1, v1, :cond_2

    move-object p0, v0

    .line 896
    goto :goto_0

    .line 898
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "returnValueClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lmiui/util/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    .line 495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v9, "#bestmatch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "fullConstructorName":Ljava/lang/String;
    sget-object v10, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 501
    :try_start_0
    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 502
    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 503
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v2, :cond_0

    .line 504
    new-instance v9, Ljava/lang/NoSuchMethodException;

    invoke-direct {v9, v5}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 507
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 505
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :try_start_1
    monitor-exit v10

    .line 538
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 507
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :try_start_2
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 511
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v10, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 512
    :try_start_3
    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 515
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v9

    .line 518
    const/4 v1, 0x0

    .line 519
    .local v1, "bestMatch":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 520
    .local v3, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v2, v0, v6

    .line 522
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {p1, v9, v11}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 524
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v9

    if-gez v9, :cond_3

    .line 528
    :cond_2
    move-object v1, v2

    .line 520
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 533
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_4
    if-eqz v1, :cond_5

    .line 534
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 535
    sget-object v10, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 536
    :try_start_5
    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    monitor-exit v10

    move-object v2, v1

    .line 538
    goto :goto_0

    .line 537
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 540
    :cond_5
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 541
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v10, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 542
    :try_start_6
    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 544
    throw v4

    .line 543
    :catchall_3
    move-exception v9

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "fullConstructorName":Ljava/lang/String;
    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 449
    :try_start_0
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 451
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_0

    .line 452
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 453
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :try_start_1
    monitor-exit v5

    .line 463
    :goto_0
    return-object v0

    .line 455
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 459
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 460
    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 461
    :try_start_3
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 464
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 466
    :try_start_5
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 468
    throw v1

    .line 467
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "fullFieldName":Ljava/lang/String;
    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 102
    :try_start_0
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 104
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 105
    new-instance v4, Ljava/lang/NoSuchFieldException;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 106
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :try_start_1
    monitor-exit v5

    .line 116
    :goto_0
    return-object v1

    .line 108
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 112
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    :try_start_3
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 119
    :try_start_5
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    throw v0

    .line 120
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 147
    if-eqz p0, :cond_0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    throw v0

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v9, "#bestmatch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "fullMethodName":Ljava/lang/String;
    sget-object v10, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 298
    :try_start_0
    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 299
    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 300
    .local v6, "method":Ljava/lang/reflect/Method;
    if-nez v6, :cond_0

    .line 301
    new-instance v9, Ljava/lang/NoSuchMethodException;

    invoke-direct {v9, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 304
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 302
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    monitor-exit v10

    .line 336
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 304
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 308
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    sget-object v10, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    :try_start_3
    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 312
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "bestMatch":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 317
    .local v7, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 319
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {p2, v9, v11}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 322
    if-eqz v1, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v9

    if-gez v9, :cond_3

    .line 326
    :cond_2
    move-object v1, v6

    .line 317
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 331
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_4
    if-eqz v1, :cond_5

    .line 332
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 333
    sget-object v10, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 334
    :try_start_5
    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    monitor-exit v10

    move-object v6, v1

    .line 336
    goto :goto_0

    .line 335
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 338
    :cond_5
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v10, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 340
    :try_start_6
    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 342
    throw v2

    .line 341
    :catchall_3
    move-exception v9

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "fullMethodName":Ljava/lang/String;
    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 239
    :try_start_0
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 241
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 242
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 243
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    monitor-exit v5

    .line 253
    :goto_0
    return-object v2

    .line 245
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 249
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 250
    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :try_start_3
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 254
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 256
    :try_start_5
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    throw v0

    .line 257
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 174
    .local v1, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 175
    aget-object v2, p2, v0

    .line 176
    .local v2, "type":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 177
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "parameter type must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_0
    if-nez v1, :cond_1

    .line 180
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    .line 182
    :cond_1
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 183
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "type":Ljava/lang/Object;
    aput-object v2, v1, v0

    .line 174
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .restart local v2    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 185
    check-cast v2, Ljava/lang/String;

    .end local v2    # "type":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 187
    .restart local v2    # "type":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter type must either be specified as Class or String"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 192
    .end local v2    # "type":Ljava/lang/Object;
    :cond_4
    if-nez v1, :cond_5

    .line 193
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Class;

    .line 195
    :cond_5
    invoke-static {p0, p1, v1}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 627
    .local p2, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0, p2}, Lmiui/util/ReflectionUtils;->checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 401
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 402
    .local v0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 403
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 405
    :cond_1
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 420
    .local v2, "first":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 421
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 422
    const/4 v2, 0x0

    .line 426
    :goto_1
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 429
    :cond_1
    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 736
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 737
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2, p2}, Lmiui/util/ReflectionUtils;->checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 738
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 739
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "ReflectionUtils"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "surroundingClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "this$0"

    invoke-static {p0, v0, p1}, Lmiui/util/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 698
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "returnValueClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 818
    :try_start_0
    new-instance v1, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 830
    :goto_0
    return-object v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 821
    goto :goto_0

    .line 822
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 823
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 824
    goto :goto_0

    .line 825
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 826
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 827
    goto :goto_0

    .line 828
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 829
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 830
    goto :goto_0
.end method

.method public static varargs tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "returnValueClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 871
    :try_start_0
    new-instance v1, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 883
    :goto_0
    return-object v1

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 874
    goto :goto_0

    .line 875
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 877
    goto :goto_0

    .line 878
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 880
    goto :goto_0

    .line 881
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 882
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 883
    goto :goto_0
.end method

.method public static tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 560
    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 585
    :goto_0
    return-object v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    :goto_0
    return-object v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 212
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 643
    :try_start_0
    new-instance v1, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 652
    :goto_0
    return-object v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 646
    goto :goto_0

    .line 647
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 649
    goto :goto_0

    .line 650
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 651
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 652
    goto :goto_0
.end method

.method public static tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 758
    :try_start_0
    new-instance v1, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 767
    :goto_0
    return-object v1

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 761
    goto :goto_0

    .line 762
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 764
    goto :goto_0

    .line 765
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 766
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 767
    goto :goto_0
.end method

.method public static tryGetSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "surroundingClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 677
    :try_start_0
    new-instance v1, Lmiui/util/ObjectReference;

    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->getSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 686
    :goto_0
    return-object v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 680
    goto :goto_0

    .line 681
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 682
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 683
    goto :goto_0

    .line 684
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 685
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 686
    goto :goto_0
.end method

.method public static varargs tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 923
    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 927
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 928
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 930
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 931
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 933
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 934
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 936
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ReflectionUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 607
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 615
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 610
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 611
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 612
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 724
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 719
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 720
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 721
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "ReflectionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
